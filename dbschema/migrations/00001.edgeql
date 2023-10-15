CREATE MIGRATION m12z7vvb6pjurg5tkv6jrn3doqugvn5whha2svnozs7abm4vtv4lya
    ONTO initial
{
  CREATE ABSTRACT TYPE default::Timestamp {
      CREATE REQUIRED PROPERTY created: std::datetime {
          SET default := (std::datetime_current());
          SET readonly := true;
      };
      CREATE REQUIRED PROPERTY updated: std::datetime {
          SET default := (std::datetime_current());
      };
  };
};
