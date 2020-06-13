<h1>vk_parsing_messages</h1>

<p>Программа поможет найти практически любую информацию в беседах и личных сообщениях из специального архива данных, который нужно запросить у ВКонтакте.</p>

Поддерживается работа <b>русскоязычной версии</b> архива данных.

<hr>

<h2>Инструкция</h2>
<ol>
<li>Запросить архив Ваших данных "Вконтакте" по ссылке: <a href="https://vk.com/data_protection?section=rules&amp;scroll_to_archive=1">https://vk.com/data_protection?section=rules&amp;scroll_to_archive=1</a></li>
<li>При получении сообщения от Администрации "Вконтакте" Вам нужно будет перейти по ссылке в пункте (1) и скачать подготовленный архив.</li>
<li>Распаковать архив "Archive".</li>
<li>Из распакованного архива скопировать/переместить папку "messages" в папку "vk_parsing_messages".</li>
<li>Запустить файл "main.py".<br/>
5.1. "1 — парсить, 2 — выйти:".<br/>
5.2. "ID диалога:" введите идентификатор любого диалога из папки "messages", включая знак "-", если он есть.<br/>
5.3. "Всего страниц: xxx".<br/>
5.4. "Первая страница (например — 1):" введите с какой страницы начать процесс парсинга.<br/>
5.5. "Последняя страница (например — xxx):" введите на какой страницу закончить процесс парсинга.<br/>
5.6. "Выполнено 100.00%".<br/>
5.7. "Готово. Файл "logs_1-xxx.html" лежит в папке "output/(ID диалога)" рядом с этой программой."
</li>
<li>Открыть полученный файл.</li>
</ol>

<h2>Памятка</h2>
 <h4>Можно одновременно парсить несколько диалогов!</h4>
<ul>
  <li>Одна страница переписки — 50 сообщений.</li>
  <li>Чем больше страниц указано за раз, тем дольше будет работать программа.</li>
  <li>Во избежание зависания и тормозов дождитесь полной прогрузки получившегося файла.</li>
  Если не помогает, то в программе разбивайте диалог по частям, например: 1-10, 11-20, 21-30 и т.д.
  <li>Поддерживается обратный ввод страниц, например: 10-5, 4-1 и т.д.</li>
  В таком случае будет сортировка сообщений от самого старого, к самому новому.
  <li><b>На Linux Ubuntu процесс занимает на 30% меньше времени, чем на Windows 10!</b></li>
</ul>

<h2>База Данных</h2>

<ul>
  <li>При первом запуске программы в этой директории, в папке "db", создаётся файл "database.db".</li>
  <li>База данных основанна "SQLite".</li>
  <li>На настоящий момент используются две таблицы: "users" и "dialogues".</li>
  <li>В таблицу "users" добавляются все пользователи, которые писали сообщение хоть раз.</li>
  <li>В таблицу "dialogues" добавляются все ID парсенных диалогов, дата со временем по UTC и скорость выполнения в секундах.</li>
  <li>При повторном парсинге диалога, таблица "users" не изменяется, а в таблице "dialogues" обновляется дата, время и скорость выполнения.</li>
</ul>


<h2>Требования</h2>

<ul>
  <li>Python3: <code>sudo apt install python3</code></li>
  <li>PIP: <code>sudo apt install python3-pip</code></li>
  <li>BeautifulSoup4: <code>sudo pip3 install beautifulsoup4</code></li>
</ul>
