CREATE MIGRATION m1pfv45e7gle5c6i3nnswc5nqbg7cpkanqkpyze2c6o5ij7egqyk2q
    ONTO m14bdfqdl2imcykxy6hsesyasvnveybteb2aherfoiioklrhumcsqq
{
  ALTER TYPE default::Identity {
      CREATE LINK provider: default::Provider {
          SET default := (SELECT
              default::Provider FILTER
                  (.name = 'ardency')
          LIMIT
              1
          );
      };
  };
  ALTER TYPE default::Identity {
      CREATE CONSTRAINT std::exclusive ON ((.email, .provider));
  };
  ALTER TYPE default::Identity {
      DROP CONSTRAINT std::exclusive ON (.email);
      CREATE MULTI LINK tokens := (.<identity[IS default::Token]);
  };
};
