<div class="art-post-body">
                                    <div class="art-post-inner art-article">
                                        <h2 class="art-postheader">
                                            List SMS Sent
                                        </h2>
                                        <div class="art-postcontent">
                                                <!-- article-content -->
                                                <?php
												satpam(array(2,3));
                                                $sql_outbox = "select s.sendingdatetime,s.id,date,DestinationNumber,s.TextDecoded,s.status, p.name
																from (select sendingdatetime,id,date_format(updatedindb,'%d %M %Y %T')date,
																REPLACE(DestinationNumber, '+62', '0')DestinationNumber,textdecoded,status from sentitems) s
																left join (select id,name,REPLACE(Number, '+62', '0') Number
																from pbk) p on s.DestinationNumber = p.Number
																ORDER BY s.`sendingdatetime` DESC";
                                                $query_outbox = mysql_query($sql_outbox);
                                                ?>
                                                <table class="art-article" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <th>SendingDate</th>
                                                    <th>DestinationNumber</th>
                                                    <th>Text</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                                <?php
                                                while($row_outbox = mysql_fetch_object($query_outbox)){
                                                    echo "<tr>
                                                          <td>".$row_outbox->date."</td>
                                                          <td>";
														  if($row_outbox->name == ""){
															  echo $row_outbox->DestinationNumber;
														  }else{
															  echo $row_outbox->name;
														  }
														  echo "</td>
                                                          <td>".$row_outbox->TextDecoded."</td>
														  <td>".$row_outbox->status."</td>
                                                          <td><a class='confirm' href=\"engines/delete.php?p=sentitems&id=".$row_outbox->id."\" >[DELETE]</a></td>";
                                                }
                                                ?>
                                                </table>
                                                <!-- /article-content -->
                                        </div>
                                        <div class="cleared"></div>
                                    </div>
                            
                            	    <div class="cleared"></div>
                                </div>