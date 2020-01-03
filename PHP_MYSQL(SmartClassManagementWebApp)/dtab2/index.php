<html>  
      <head>  
        <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
           <title>PHP Ajax Crud - Insert Update Delete with Stored Procedure</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
           <style>  
                body  
                {  
                     margin:0;  
                     padding:0;  
                     background-color:#f1f1f1;  
                }  
                .box  
                {  
                     width:750px;  
                     padding:20px;  
                     background-color:#fff;  
                     border:1px solid #ccc;  
                     border-radius:5px;  
                     margin-top:100px;  
                }  
           </style>  
      </head>  
      <body>  
           <div class="container">  
            <!--    <h3 align="center">PHP Ajax Crud - Insert Update Delete with Stored Procedure</h3>  -->
           <b> <u><h3 align="center">ROOM 1</h3></u></b>
                
                <br /><br />  
                <label>no of students</label>  
                <input type="text" name="first_name" id="first_name" class="form-control" />  
                <br />  
                <label>projector</label>  
                <input type="text" name="last_name" id="last_name" class="form-control" />  
                <br /> 
                
                <label>audio</label>  
                <input type="text" name="audios" id="audios" class="form-control" />  
                <br />

                <label>smartboard</label>  
                <input type="text" name="smart_boards" id="smart_boards" class="form-control" />  
                <br />

                <label>AC</label>  
                <input type="text" name="A_C" id="A_C" class="form-control" />  
                <br />

                <label>Internet facility</label>  
                <input type="text" name="I_N" id="I_N" class="form-control" />  
                <br />

                <div align="center">  
                     <input type="hidden" name="id" id="user_id" />  
                     <button type="button" name="action" id="action" class="btn btn-warning">Add</button>  
                </div>  
                <br />  
                <br />  
                
                <div id="result" class="table-responsive">  
                </div>  
           </div>  
      </body>  
 </html>  
 <script>  
 $(document).ready(function(){  
      fetchUser();  
      function fetchUser()  
      {  
           var action = "select";  
           $.ajax({  
                url : "select.php",  
                method:"POST",  
                data:{action:action},  
                success:function(data){  
                     $('#first_name').val('');  
                     $('#last_name').val('');  
                     $('#audios').val(''); 
                     $('#smart_boards').val('');
                     $('#A_C').val('');
                     $('#I_N').val('');
                     $('#action').text("Add");  
                     $('#result').html(data);  
                }  
           });  
      }  
      $('#action').click(function(){  
           var firstName = $('#first_name').val();  
           var lastName = $('#last_name').val();  
           var audio = $('#audios').val(); 
           var smartboards = $('#smart_boards').val();
           var ac = $('#A_C').val();
           var internet = $('#I_N').val();  
           var id = $('#user_id').val();  
           var action = $('#action').text();  
           if(firstName != '' && lastName != '' && audio != '' && smartboards !='' && ac != '')  
           {  
                $.ajax({  
                     url : "action.php",  
                     method:"POST",  
                     data:{firstName:firstName, lastName:lastName, audio:audio, smartboards:smartboards, ac:ac,internet:internet, id:id, action:action},  
                     success:function(data){  
                          alert(data);  
                          fetchUser();  
                     }  
                });  
           }  
           else  
           {  
                alert("all Fields are Required");  
           }  
      });  
      $(document).on('click', '.update', function(){  
           var id = $(this).attr("id");  
           $.ajax({  
                url:"fetch.php",  
                method:"POST",  
                data:{id:id},  
                dataType:"json",  
                success:function(data){  
                     $('#action').text("Edit");  
                     $('#user_id').val(id);  
                     $('#first_name').val(data.first_name);  
                     $('#last_name').val(data.last_name);  
                     $('#audios').val(data.audios); 
                     $('#smart_boards').val(data.smart_boards);
                     $('#A_C').val(data.A_C);
                     $('#I_N').val(data.I_N);  
                }  
           })  
      });  
      $(document).on('click', '.delete', function(){  
           var id = $(this).attr("id");  
           if(confirm("Are you sure you want to remove this data?"))  
           {  
                var action = "Delete";  
                $.ajax({  
                     url:"action.php",  
                     method:"POST",  
                     data:{id:id, action:action},  
                     success:function(data)  
                     {  
                          fetchUser();  
                          alert(data);  
                     }  
                })  
           }  
           else  
           {  
                return false;  
           }  
      });  
 });  
 </script>