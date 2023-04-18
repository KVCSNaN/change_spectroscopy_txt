library("stringr")

txt_files = list.files(".",pattern = "\\.txt$") #,full.names = TRUE

for (i in txt_files){
    raw_txt = read.delim(i,header = FALSE,sep = "\t" ,stringsAsFactors = FALSE)
    refined_txt = apply(raw_txt,1,function(x){
                      str_replace_all(x,pattern=",",replacement = "\\.")
    })
    write.table(refined_txt,file= paste0("./",i),sep= "\t",dec = ".",row.names = FALSE,col.names = FALSE,quote = FALSE)
  }
