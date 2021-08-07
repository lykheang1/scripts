use chrono::prelude::*;
use std::fs;

#[macro_use]
extern crate serde_json;

fn main() -> std::io::Result<()> {
    let dt: DateTime<Local> = Local::now();
    let now = dt.format("%Y-%m-%d : %H:%M:%S").to_string();
    let data = json!({
      "last_build": now,
    });

    fs::write("last-build.json", data.to_string()).expect("Unable to generate the last-build.json");
    Ok(())
}
