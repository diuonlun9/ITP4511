$.ajax({
    url : "php/user_profile.php",
    dataType : "json", 
    success: function(rs) {
        console.log(rs[0]['staff_Name']);
        const bottomuser = rs[0]['staff_Name'];
        
        document.getElementById('userText').innerHTML = bottomuser;

        if(firstName==null&&lastName ==null){
            document.getElementById('userText').innerHTML = "<span style=color:red;>Click Me To SET Profile</span>";
        }
    },
    error: function(err){
        console.log("error" + err);
    }
});