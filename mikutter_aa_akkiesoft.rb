# -*- coding: utf-8 -*-

Plugin.create(:mikutter_aa_akkiesoft) do
  def set_aa_to_postbox(opt, aa)
    box = Plugin[:gtk3].widgetof(opt.widget).widget_post.buffer
    box.text = box.text.insert(box.cursor_position, aa)
  end
  def post(str)
    world, = Plugin.filtering(:world_current, nil)
    compose(world, body: str)
  end

  command(
    :aa_akkiesoft_jibaku,
    name: 'AA_自爆する',
    condition: lambda{ |opt| true },
    visible: true,
    role: :postbox
  ) do |opt|
    strs =  <<"EOM"
.　　☝
　　　　　　　　՞
　＿人人人人人人＿
　＞　(　 　　 )　＜　　☞
　￣Y^Y^YY^Y^Y￣

　՞
　　　　　　ਊ
EOM
    set_aa_to_postbox(opt, strs)
  end

  command(
    :aa_akkiesoft_jibaku_end,
    name: 'AA_自爆後(ナウシカEND)',
    condition: lambda{ |opt| true },
    visible: true,
    role: :postbox
  ) do |opt|
    strs = <<"EOM"
.　　　　　∞
　　　　　∫
　　,';:☜;.`,ਊ,,;';,;☞,.՞
　　՞
　　　　　　　　　お わ り
EOM
    set_aa_to_postbox(opt, strs)
  end

  command(
    :aa_akkiesoft_oeeee,
    name: 'AA_吐く',
    condition: lambda{ |opt| true },
    visible: true,
    role: :postbox
  ) do |opt|
    strs = <<"EOM"
オエーー!!!!　＿_
　　　 ＿＿_／　 ＼
　　 ／　 ／　／/⌒
　　/ (ﾟ)/　／ /
　 /　　(　/｡⌒丶。
　｜　　 ＼＼ﾟ｡∴｡ｏ
`／　　 /⌒＼＼ﾟ｡:ｏ
/　　　｜　　＼Ｕ∴)
　　　 ｜　　　ﾞＵ|
　　　　　　　　 ||
　　　　　　　　 Ｕ
EOM
    set_aa_to_postbox(opt, strs)
  end

  command(
    :aa_akkiesoft_killme_is_end,
    name: 'AA_チ○ーリー・ブラ○ン',
    condition: lambda{ |opt| true },
    visible: true,
    role: :postbox
  ) do |opt|
    strs = <<"EOM"
.　　　　　,,　＿
　　　／ 　　　 ｀ ､
　　/　　(_ﾉL_）　 ヽ
 　/　　 ´・　 ・｀　　l
（l　 　　　し　　　　l）
.　l　　　　＿＿　　 l
　 >　､ _ 　　　　 ィ
 ／　 　　　￣　　 ヽ
 /　|　　　　　　　　　iヽ
EOM
    set_aa_to_postbox(opt, strs)
  end

  command(
    :aa_akkiesoft_furutto,
    name: 'AA_フルット風ネコ',
    condition: lambda{ |opt| true },
    visible: true,
    role: :postbox
  ) do |opt|
    strs = <<"EOM"
.　∧＿_∧
（　 ՞ ‸ ՞）
EOM
    set_aa_to_postbox(opt, strs)
  end

  command(
    :aa_akkiesoft_poizon,
    name: 'ツイートをPOIZONする',
    condition: lambda{ |opt| true },
    visible: true,
    role: :timeline
  ) do |opt|
    post("※このツイートは言いたいことも言えない世の中のためPOIZONされました※")
  end

  command(
    :aa_akkiesoft_poizon2,
    name: 'ツイートをｵｯｵｳする',
    condition: lambda{ |opt| true },
    visible: true,
    role: :timeline
  ) do |opt|
    post("※俺は俺を騙すことなく生きていくためこのツイートはｵｯｵｳされました※")
  end

end
