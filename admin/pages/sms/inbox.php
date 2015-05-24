<div class="art-post-body">
				    <style>
									td{
													    height: 30px;
									}
				    </style>
                                    <div class="art-post-inner art-article">
                                        <h2 class="art-postheader">
                                            List SMS Inbox
                                        </h2>
                                        <div class="art-postcontent">
                                                <!-- article-content -->
                                                <?php
												satpam(array(2,3));
                                                include "../config/BlegohPagingClass.php";
                                                $data = 15;
												$sql = "select i.ID,i.ReceivingDateTime,date,SenderNumber,i.TextDecoded, p.name
														from (select ID,ReceivingDateTime,date_format(ReceivingDateTime,'%d %M %Y %T')date,
														REPLACE(SenderNumber, '+62', '0') SenderNumber, TextDecoded
														from inbox) i
														left join (select id,name,REPLACE(Number, '+62', '0') Number
														from pbk) p on i.SenderNumber = p.Number
														ORDER BY i.`ReceivingDateTime` DESC";
                                                $paging = new BlegohPaging($sql,$data,"index.php?page=sms&p=inbox","aktif","paging","prevnext");
                                                
                                                
                                                $query_inbox = $paging->getResult();
                                                ?>
                                                <table class="art-article" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <th>ReceivingDateTime</th>
                                                    <th>SenderNumber</th>
                                                    <th width="350">Text</th>
                                                    <th>Action</th>
                                                </tr>
                                                <?php
                                                while($row_inbox = mysql_fetch_object($query_inbox)){
                                                    echo "<tr>
                                                          <td>".$row_inbox->date."</td>
                                                          <td>";
														  if($row_inbox->name != ""){ 
														  		echo $row_inbox->name; 
															}else{
																echo $row_inbox->SenderNumber;
															} 
													echo"</td>
                                                          <td>".htmlspecialchars($row_inbox->TextDecoded)."</td>
                                                          <td>
							  <a href='index.php?page=sms&p=send&number=".$row_inbox->SenderNumber."' >[REPLY]</a>
							  <a href=\"engines/delete.php?p=inbox&id=".$row_inbox->ID."\" class=\"confirm\" >[DELETE]</a>
							  </td>";
                                                }
                                                ?>
                                                </table>
                                                <br /><br />
                                                <div id="paging">
                                                <center>
                                                <?php
													$paging->getPaging();
                                                ?>
                                                </center>
                                                </div>
                                                <!-- /article-content -->
                                        </div>
                                        <div class="cleared"></div>
                                    </div>
                            
                            	    <div class="cleared"></div>
                                </div>