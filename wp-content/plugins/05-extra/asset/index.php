<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>demo for extra</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="extra.js"></script>
</head>

<body>
<block-tag id="unique_block≪0≫">
  <div style="border:1px solid black;padding: 10px; margin:5px;"> Block 0
    <input name="block_name[0]">
    <input id="unique_block≪0≫_controller_add" sst_unique="unique_block" max_extra="1" type="image" src="add.png">
    <input id="unique_block≪0≫_controller_remove" sst_unique="unique_block" type="image" src="remove.png" style="display: none;">
    <br>
    <field-tag id="unique_field≪0≫≪0≫">
      <div style="border:1px solid blue;padding: 10px; margin:5px;">Field 0
        <input name="field_name[0][0]">
        <input id="unique_field≪0≫≪0≫_controller_add" sst_unique="unique_field" max_extra="2" type="image" src="add.png">
        <input id="unique_field≪0≫≪0≫_controller_remove" sst_unique="unique_field" type="image" src="remove.png" style="display: none;">
        <br>
        <input-tag id="unique_input≪0≫≪0≫≪0≫">
          <div style="border:1px solid red;padding: 10px; margin:5px;"> Iput 0:
            <input name="input_name[0][0][0]">
            <input id="unique_input≪0≫≪0≫≪0≫_controller_add" sst_unique="unique_input" max_extra="3" type="image" src="add.png">
            <input id="unique_input≪0≫≪0≫≪0≫_controller_remove" sst_unique="unique_input" type="image" src="remove.png" style="display: none;">
            <br>
          </div>
        </input-tag>
      </div>
    </field-tag>
  </div>
</block-tag>
</body>
</html>
