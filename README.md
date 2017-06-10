# mybatisproject
Spring-mybatis-mysql-maven - Это вэб-приложение, которое отображает первое слово в базе данных.
.. следуем инструкциям:
1. Устанавливаем/скачиваем Eclipse IDE for Java EE developers; Сервер apache tomcat версии 7.0 или выше; mySQL Workbench;
2. Настройка сервера Apache Tomcat в Eclipse
  --> 1) Разархивировать Apache Tomcat куда удобно (Desktop)
      2) Запуск Eclipse
        --> Window-->Preferences-->Server-->Runtime Environments-->Add. Добавляем соответсвующую версию Tomcat с соответсвующей директорией([Desktop-->Tomcat]).
      3) Снизу в Eclipse в ячейке Servers--> правая кнопка мыши-->New-->Server-->Выбираем соответсвующий сервер. Запускаем сервер.
3. Устанавливаем Workbench-->Запускаем-->
      1) в MySQL Connections создаем новый Connection-->
      Connection name=newConnection
      hostname=student-dev.c4wmdt9lscoq.us-east-2.rds.amazonaws.com
      port=3306
      username=yourname
      password=truesight7
      -->OK
4. Импортируем Проект с гитхаба в Eclipse
      1)Заходим в Eclipse
      2)File-->Import-->Git-->Project from Git-->Next-->Clone URI-->next
      URI=https://github.com/bekbossyn/mybatisproject.git
      -->Next-->next-->next..-->Import Existing Eclipse Project-->Finish.
5. Запускаем Проект
      Кликаем правой кнопкой мыши на проект-->Run as-->Run on Server-->
      Далее в любом браузере переходим по адресу:
      http://localhost:[port]/StudentEnrollmentWithMyBatis/
      port=8080/8085.. в зависимости от настройки Tomcat Port'а
      в моем случае http://localhost:8080/StudentEnrollmentWithMyBatis/
      Дальше вроде все понятно..
