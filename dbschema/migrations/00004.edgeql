CREATE MIGRATION m1esvtq472i64jore3wofpsncpme6jr4trrmcxyuwi7yj6pt5wfwiq
    ONTO m1bmxkikhhbgwi4j54eejlgtwpx4e2qyjqvc57lhqndhp2cvj44wpq
{
  CREATE TYPE default::Provider EXTENDING default::Timestamp {
      CREATE REQUIRED PROPERTY name: std::str;
      CREATE CONSTRAINT std::exclusive ON (.name);
      CREATE INDEX ON (.name);
      CREATE PROPERTY client: std::str;
      CREATE PROPERTY grant_type: std::str;
      CREATE PROPERTY meta: std::json;
      CREATE PROPERTY redirect_url: std::str;
      CREATE PROPERTY secret: std::str;
  };
};
