1. 參考cnc_manager路徑的設定方式，新增自己project目錄，其中需要注意
    1.1 路徑底下有有src, include, lib的資料夾
    1.2 CMakeLists.txt為cmake必要的檔案，請參考並改寫成您的版本(若有引用任何library，需要改寫此檔案)
2. 新增完新資料夾之後，需要修改本路徑底下的CMakeLists.txt，新增add_subdirectory(新增的路徑名稱)
3. 編譯
    3.1 Windows在本路徑底下執行build.bat
    3.2 Linux在本路徑底下執行build.sh
4. 成功之後，至Build/bin底下即可看到執行檔