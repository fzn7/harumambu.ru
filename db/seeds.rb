# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


{ 'Создание сайтов/SEO' => [
  'Веб-программирование',
  'Создание сайтов "под ключ"',
  'HTML-верстка',
  'Продвижение сайтов/SEO', 
  'Системы управления контентом',
  'Flash',
  'Интернет-магазины',
  'Прочее',
  'Тестирование сайтов'
], 'Программирование' => [
  'Скрипты/Веб-приложения',
  'Разработка прикладного ПО',
  'Прочее',
  'Приложения для телефонов',
  'Разработка игр',
  'Разработка баз данных',
  'Системное программирование',
  'Приложения для PDA/PocketPC',
  'Тестирование ПО'
], 'Статьи/Тексты/Переводы' => [
  'Дипломы/Курсовые/Рефераты',
  'Копирайтинг/Рерайтинг',
  'Контент-менеджмент',
  'Новости/Статьи/Обзоры',
  'Прочее',
  'Технические статьи',
  'Технические переводы',
  'Художественные переводы',
  'Редактирование/Корректировка',
  'Резюме/Речи/Письма',
  'Стихи/Проза'
], 'Дизайн/Графика/Фото' => [
  'Дизайн сайтов',
  '3D-графика',
  'Логотипы',
  'Рисунки/Иллюстрации',
  'Баннеры',
  'Прочее',
  'Полиграфия',
  'Анимация',
  'Обработка фотографий',
  'Дизайн интерьера',
  'Дизайн продукции',
  'Фирменный стиль',
  'Программные интерфейсы',
  'Пиксель-арт/Иконки',
  'Наружная реклама',
  'Фотографии',
  'Мультимедиа презентации',
  'Промышленный дизайн'
], 'Администрирование' => [
  'Настройка сервера/ПО',
  'Системное администрирование',
  'Хостинг',
  'Прочее'
], 'Аудио/Видео/Мультимедиа' => [
  'Аудио/Видео-ролики',
  'Прочее',
  'Озвучивание',
  'Музыка'
], 'Прочее' => [
  'Юридические услуги'
]}.each do |k, v|
  category = Category.create!(:title => k)
  v.each do |subcategory|
    Category.create!(:category => category, :title => subcategory)
  end
end
