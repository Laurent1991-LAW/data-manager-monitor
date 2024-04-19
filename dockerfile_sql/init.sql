-- 建库 使用库 建表 插数据
CREATE DATABASE IF NOT EXISTS ruoyidb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 使用并用source命令执行你的初始化mysql
-- 可以执行多次source命令
USE ruoyidb;
SOURCE ./script/quartz.sql;
SOURCE ./script/ry_20231130.sql;
