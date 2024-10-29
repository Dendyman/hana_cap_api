using my.space as my from '../db/schema';

service CatalogService {
    entity Table as projection on my.Table;  
}