# -*- coding: utf-8 -*-

Plugin.create(:mikutter_aa_akkiesoft) do
  command(
    :aa_akkiesoft_jibaku,
    name: 'AA_自爆する',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    strs = <<"EOM"
　　☝
　　　　　　　　՞
　＿人人人人人人＿
　＞　(　 　　 )　＜　　☞
　￣Y^Y^YY^Y^Y￣

　՞
　　　　　　ਊ
EOM
    Post.primary_service.update(:message => strs)
  end

  command(
    :aa_akkiesoft_oeeee,
    name: 'AA_吐く',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
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
    Post.primary_service.update(:message => strs)
  end

  command(
    :aa_akkiesoft_killme_is_end,
    name: 'AA_チ○ーリー・ブラ○ン',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    strs = <<"EOM"
　　　　　 ,,　＿
　　　／ 　　　 ｀ ､
　　/　　(_ﾉL_）　 ヽ
 　/　　 ´・　 ・｀　　l
（l　 　　　し　　　　l）
.　l　　　　＿＿　　 l
　 >　､ _ 　　　　 ィ
 ／　 　　　￣　　 ヽ
 /　|　　　　　　　　　iヽ
EOM
    Post.primary_service.update(:message => strs)
  end
end
