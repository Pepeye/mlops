CREATE MIGRATION m14bdfqdl2imcykxy6hsesyasvnveybteb2aherfoiioklrhumcsqq
    ONTO m1esvtq472i64jore3wofpsncpme6jr4trrmcxyuwi7yj6pt5wfwiq
{
  CREATE TYPE default::Token EXTENDING default::Timestamp {
      CREATE REQUIRED LINK identity: default::Identity;
      CREATE REQUIRED PROPERTY access_token: std::str;
      CREATE PROPERTY expiry: std::int64;
      CREATE PROPERTY refresh_token: std::str;
      CREATE PROPERTY scope: std::str;
      CREATE PROPERTY token_type: std::str;
      CREATE PROPERTY tokenid: std::str;
  };
};
