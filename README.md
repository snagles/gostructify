# gostructify [![Go Report Card](https://goreportcard.com/badge/github.com/snagles/gostructify)](https://goreportcard.com/report/github.com/snagles/gostructify) [![GoDoc](https://godoc.org/github.com/snagles/gostructify?status.svg)](https://godoc.org/github.com/snagles/gostructify)  ![Build Status](https://travis-ci.org/snagles/gostructify.svg?branch=master) [![Coverage Status](https://codecov.io/gh/snagles/gostructify/branch/develop/graph/badge.svg)](https://codecov.io/gh/snagles/gostructify)

gostructify generates go structs, types, and methods from database tables.

Supported databases include MariaDB, MySQL, Vertica, and PostgreSQL with support for additional databases in the future. Supported datatypes depend on the database, but all "common" datatypes are supported. See the .sql files for tested and verified datatypes.

## Quickstart
` go install github.com/snagles/gostructify/cmd && gostructify help`

## Example
Running:
```gostructify --directory ~/go/src/github.com/snagles/gostructify/cmd --tags gorm,sqlx,json --methods gorm mariadb --hostname 127.0.0.1 --username root --tables all_data_types --database test```

Will output the file: ~/go/src/github.com/snagles/gostructify/cmd/all_data_types_structify.go

```go
// Code generated by gostructify command "gostructify --directory /Users/Stefan/go/src/github.com/snagles/gostructify/cmd --tags gorm,sqlx,json --methods gorm mariadb --hostname 127.0.0.1 --username root --tables all_data_types --database test"
package main

import "time"

// AllDataTypes is the go struct representation of test.all_data_types
type AllDataTypes struct {
	Varchar    string    `db:"varchar" gorm:"column:varchar" json:"varchar,omitempty"`
	Tinyint    int       `db:"tinyint" gorm:"column:tinyint" json:"tinyint,omitempty"`
	Text       string    `db:"text" gorm:"column:text" json:"text,omitempty"`
	Date       time.Time `db:"date" gorm:"column:date" json:"date,omitempty"`
	Smallint   int       `db:"smallint" gorm:"column:smallint" json:"smallint,omitempty"`
	Mediumint  int       `db:"mediumint" gorm:"column:mediumint" json:"mediumint,omitempty"`
	Int        int       `db:"int" gorm:"column:int" json:"int,omitempty"`
	Bigint     int       `db:"bigint" gorm:"column:bigint" json:"bigint,omitempty"`
	Float      float64   `db:"float" gorm:"column:float" json:"float,omitempty"`
	Double     float64   `db:"double" gorm:"column:double" json:"double,omitempty"`
	Decimal    float64   `db:"decimal" gorm:"column:decimal" json:"decimal,omitempty"`
	Datetime   time.Time `db:"datetime" gorm:"column:datetime" json:"datetime,omitempty"`
	Timestamp  time.Time `db:"timestamp" gorm:"column:timestamp" json:"timestamp,omitempty"`
	Time       time.Time `db:"time" gorm:"column:time" json:"time,omitempty"`
	Year       time.Time `db:"year" gorm:"column:year" json:"year,omitempty"`
	Char       string    `db:"char" gorm:"column:char" json:"char,omitempty"`
	Tinyblob   []byte    `db:"tinyblob" gorm:"column:tinyblob" json:"tinyblob,omitempty"`
	Tinytext   string    `db:"tinytext" gorm:"column:tinytext" json:"tinytext,omitempty"`
	Blob       []byte    `db:"blob" gorm:"column:blob" json:"blob,omitempty"`
	Mediumblob []byte    `db:"mediumblob" gorm:"column:mediumblob" json:"mediumblob,omitempty"`
	Mediumtext string    `db:"mediumtext" gorm:"column:mediumtext" json:"mediumtext,omitempty"`
	Longblob   []byte    `db:"longblob" gorm:"column:longblob" json:"longblob,omitempty"`
	Longtext   string    `db:"longtext" gorm:"column:longtext" json:"longtext,omitempty"`
	Enum       string    `db:"enum" gorm:"column:enum" json:"enum,omitempty"`
	Set        string    `db:"set" gorm:"column:set" json:"set,omitempty"`
	Bool       int       `db:"bool" gorm:"column:bool" json:"bool,omitempty"`
	Binary     []byte    `db:"binary" gorm:"column:binary" json:"binary,omitempty"`
	Varbinary  []byte    `db:"varbinary" gorm:"column:varbinary" json:"varbinary,omitempty"`
}

// TableName manually overrides gorms defaults of taking the struct name and pluralizing it
// http://jinzhu.me/gorm/models.html#conventions
func (a *AllDataTypes) TableName() string {
	return "all_data_types"
}
```

## Options Detailed
### Nullable Types
- guregu (https://github.com/guregu/null) adds nullable type support for String, Int, Float, Bool, and Time datatypes
- sql (https://golang.org/pkg/database/sql/) adds nullable type support for String, Int, Float, and Bool datatypes with Time supported added from (https://github.com/go-sql-driver/mysql) mysql.NullTime
### Tags
- gorm (https://github.com/jinzhu/gorm) adds gorm column annotations in the format `gorm:"column:columnname"`. Future features will add migration tags
- sqlx (https://github.com/jmoiron/sqlx) adds sqlx column annotations in the format `db:"columnname"`
- JSON adds csv annotations in the format `json:"column_name,omitempty"`
- CSV adds csv annotations in the format `csv:"column_name,omitempty"`
- XML adds xml annotations in the format `xml:"column_name,omitempty"`
### Methods
- GORM (https://github.com/jinzhu/gorm) adds the table name method for gorm structs in the format
```go
func (s *StructName) TableName() string {
	return "struct_name"
}
```

## Contributions:
Project was heavily inspired by Shelnutt2's db2struct (https://github.com/Shelnutt2/db2struct) and the go stringer tool (https://godoc.org/golang.org/x/tools/cmd/stringer)
