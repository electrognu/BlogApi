USE BlogApp_DB;

-- Inserting 5 authors with URLs as image
INSERT INTO authors (name, email, image) VALUES 
('Autor1', 'autor1@ejemplo.com', 'https://picsum.photos/200/300'),
('Autor2', 'autor2@ejemplo.com', 'https://picsum.photos/200/300'),
('Autor3', 'autor3@ejemplo.com', 'https://picsum.photos/200/300'),
('Autor4', 'autor4@ejemplo.com', 'https://picsum.photos/200/300'),
('Autor5', 'autor5@ejemplo.com', 'https://picsum.photos/200/300');

-- Insert 20 posts distributed betwen the 5 authors
INSERT INTO posts (title, description, creation_date, categorie, author_id) VALUES
('Título del Post 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras imperdiet, magna non auctor laoreet, purus justo bibendum leo, vitae posuere nunc leo at nulla. Etiam ullamcorper ultricies odio, non pulvinar ligula tempor vel. Integer ut lectus vitae nisl facilisis volutpat.',DATE_ADD(CURDATE(), INTERVAL 2 DAY)
, 'Categoría A', 1),
('Título del Post 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus arcu nulla, non luctus dolor auctor a. Suspendisse auctor nisl ut lorem bibendum, nec eleifend enim accumsan. Vivamus scelerisque massa eu.', DATE_ADD(CURDATE(), INTERVAL 1 DAY)
, 'Categoría B', 1),
('Título del Post 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt, magna eget convallis condimentum, ligula est tristique velit, sed posuere lacus metus ac sapien. Vestibulum ac nulla sem. Proin posuere tincidunt.',DATE_ADD(CURDATE(), INTERVAL 3 DAY)
, 'Categoría C', 2),
('Título del Post 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut libero eget turpis scelerisque aliquam. In ut nisi vitae justo tempor fermentum at ac orci. Aliquam vitae nulla vehicula, aliquet metus nec, iaculis.',DATE_ADD(CURDATE(), INTERVAL 2 DAY)
, 'Categoría D', 2),
('Título del Post 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet odio sed leo suscipit fermentum. Pellentesque dictum vehicula nulla, eu laoreet magna vestibulum sed. Morbi tempus vitae ligula vel gravida. Fusce volutpat libero eu ipsum.', DATE_ADD(CURDATE(), INTERVAL 1 DAY)
, 'Categoría A', 3),
('Título del Post 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur ex enim, sit amet vestibulum velit vehicula ac. Maecenas ultricies suscipit est, eget feugiat turpis malesuada vel. Proin auctor tellus ac.',DATE_ADD(CURDATE(), INTERVAL 3 DAY)
, 'Categoría B', 3),
('Título del Post 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dapibus lacus sit amet turpis auctor tincidunt. Integer sed ipsum elit. Fusce lacinia ligula at urna faucibus, at scelerisque ipsum gravida. Aenean sit amet ante vel velit suscipit ullamcorper. Cras ut libero in risus mollis dignissim.',DATE_ADD(CURDATE(), INTERVAL 3 DAY)
, 'Categoría C', 4),
('Título del Post 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin at ligula magna. Donec interdum cursus leo, ut auctor nulla blandit sit amet. Curabitur eget massa in.', DATE_ADD(CURDATE(), INTERVAL 1 DAY)
, 'Categoría D', 4),
('Título del Post 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac sapien eget purus laoreet facilisis in vel orci. Vestibulum ornare, risus non tristique interdum, ligula purus efficitur augue, ac rhoncus lacus odio.',DATE_ADD(CURDATE(), INTERVAL 2 DAY)
, 'Categoría A', 5),
('Título del Post 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam nec dui sollicitudin, egestas libero ut, scelerisque elit. Suspendisse potenti. Nulla dictum eu augue sit amet viverra. Vivamus pharetra venenatis ultricies.',DATE_ADD(CURDATE(), INTERVAL 3 DAY)
, 'Categoría B', 5),
('Título del Post 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed ex eget urna aliquam bibendum et nec nulla. Duis facilisis metus non metus pulvinar, non pulvinar odio egestas.', DATE_ADD(CURDATE(), INTERVAL 1 DAY)
, 'Categoría C', 1),
('Título del Post 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vestibulum, urna a fermentum posuere, lacus sapien consequat dolor, vel tincidunt sapien nulla eget arcu. Praesent tristique massa vel urna auctor, non fermentum nulla.',DATE_ADD(CURDATE(), INTERVAL 3 DAY)
, 'Categoría D', 1),
('Título del Post 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse at quam dapibus, sollicitudin urna eget, vulputate justo. Nulla sit amet felis cursus, consequat odio sit amet, pharetra sapien. In vitae.',DATE_ADD(CURDATE(), INTERVAL 2 DAY)
, 'Categoría A', 2),
('Título del Post 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac pulvinar velit. Curabitur feugiat libero id elit bibendum varius. Nulla facilisi. Ut ac pharetra quam. Vivamus in urna nulla. Sed.', DATE_ADD(CURDATE(), INTERVAL 1 DAY)
, 'Categoría B', 2),
('Título del Post 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus viverra erat id nisl consectetur, vel varius metus dignissim. Aliquam posuere luctus lorem, eu fermentum magna accumsan non.',DATE_ADD(CURDATE(), INTERVAL 3 DAY)
, 'Categoría C', 3),
('Título del Post 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel augue est. Donec euismod ac quam sed pellentesque. Donec porta, mi eget interdum condimentum, lacus felis varius felis, in pharetra augue tortor nec orci. Nullam venenatis risus vitae arcu pharetra.',DATE_ADD(CURDATE(), INTERVAL 2 DAY)
, 'Categoría D', 3),
('Título del Post 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum tellus et magna fermentum scelerisque. Curabitur egestas condimentum augue, eget vestibulum orci. Nam malesuada lectus vel.', DATE_ADD(CURDATE(), INTERVAL 1 DAY)
, 'Categoría A', 4),
('Título del Post 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra felis ligula, sit amet consectetur ligula aliquet vitae. Etiam euismod luctus felis, vitae convallis velit sagittis a. Aenean faucibus magna a purus egestas, vitae scelerisque lorem facilisis.',DATE_ADD(CURDATE(), INTERVAL 2 DAY)
, 'Categoría B', 4),
('Título del Post 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id magna enim. Morbi id ex sed ante hendrerit facilisis in ac turpis. Duis ut mauris suscipit, commodo odio eu, fermentum.',DATE_ADD(CURDATE(), INTERVAL 3 DAY)
, 'Categoría C', 5),
('Título del Post 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis bibendum est, eu consectetur dolor accumsan vitae. Sed a sapien eget ligula faucibus tincidunt. Proin fermentum, risus nec facilisis.', DATE_ADD(CURDATE(), INTERVAL 1 DAY)
, 'Categoría D', 5);
