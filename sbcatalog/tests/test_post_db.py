import pymongo


def test_restore_db():
    try:
        with pymongo.connection.Connection('database', 27017) as conn:
            conn.drop_database('sbcatalog')
            if 'sbcatalog-bak' in conn.database_names():
                conn.copy_database('sbcatalog-bak', 'sbcatalog')
                conn.drop_database('sbcatalog-bak')
            assert True
    except:
        assert False
