.class public Lbbc/mobile/news/helper/LinkGenerator;
.super Ljava/lang/Object;
.source "LinkGenerator.java"


# static fields
.field private static final A_HREF_CLICK_TO_PLAY_END:Ljava/lang/String; = "\')\"><img id=\"cta\" class=\"play\" src=\"file:///android_res/raw/icon_play_button.png\"/></a>"

.field private static final A_HREF_CLICK_TO_PLAY_START:Ljava/lang/String; = "<a href=\"javascript:window.jsinterface.onClickToPlay(\'"

.field private static final BANDWIDTH_MASK1:Ljava/lang/String; = "%7Bbandwidth%7D"

.field private static final BANDWIDTH_MASK2:Ljava/lang/String; = "%7bbandwidth%7d"

.field private static final BANDWIDTH_MASK3:Ljava/lang/String; = "\\{bandwidth\\}"

.field private static final BANDWIDTH_MASKS:[Ljava/lang/String; = null

.field private static final BBC_IMAGE_SCHEME:Ljava/lang/String; = "bbcimage"

.field private static final BBC_VIDEO_SCHEME:Ljava/lang/String; = "bbcvideo"

.field public static final CONNECTION_3G:Ljava/lang/String; = "3g"

.field public static final CONNECTION_WIFI:Ljava/lang/String; = "wifi"

.field public static final CONTENT_CDATA_END:Ljava/lang/String; = "]]></content>"

.field public static final CONTENT_CDATA_START:Ljava/lang/String; = "<content><![CDATA["

.field public static final CONTENT_END_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final CONTENT_START_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DEVICE_ID_MARKER:Ljava/lang/String; = "%7bdevice%7d"

.field private static final HREF_END_TAG:Ljava/lang/String; = "</a>"

.field private static final HREF_START_TAG:Ljava/lang/String; = "<a href=\""

.field private static final IMG_END_TAG:Ljava/lang/String; = "/>"

.field private static final IMG_JSCRIPT:Ljava/lang/String; = "\" onload=\"this.parentNode.style.display=\'block\';\""

.field private static final IMG_START_TAG:Ljava/lang/String; = "<img"

.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_DEVICE_TYPE:Ljava/lang/String;

.field private static final WSAV_FIX_LINKS_PATTERN:Ljava/util/regex/Pattern;

.field private static final WSAV_FIX_MEDIA_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lbbc/mobile/news/helper/LinkGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/LinkGenerator;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/helper/FlashUtilsNew;->getMoiraVideoDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/LinkGenerator;->VIDEO_DEVICE_TYPE:Ljava/lang/String;

    .line 29
    const-string v0, "bbcimage://urn-news.bbc.co.uk-ws-.*?/(.*?\\.(jpg|gif|png|jpeg))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/LinkGenerator;->WSAV_FIX_LINKS_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "bbc.*://urn-news.bbc.co.uk-ws-.*?/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/LinkGenerator;->WSAV_FIX_MEDIA_PATTERN:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "<content type=\"xhtml\">"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/LinkGenerator;->CONTENT_START_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "</content>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/LinkGenerator;->CONTENT_END_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    const-string v2, "%7Bbandwidth%7D"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 56
    const-string v2, "%7bbandwidth%7d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 57
    const-string v2, "\\{bandwidth\\}"

    aput-object v2, v0, v1

    .line 53
    sput-object v0, Lbbc/mobile/news/helper/LinkGenerator;->BANDWIDTH_MASKS:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteVideoLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"

    .prologue
    .line 379
    const-string v2, "<a href=\"bbcvideo.*?>.*?</a>"

    .line 380
    .local v2, pattern:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 381
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 385
    return-object p0
.end method

.method public static fixAdCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    const/16 v4, 0x2e

    const/16 v3, 0x2d

    .line 519
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 520
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 522
    const/16 v1, 0x26

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 519
    return-object v0
.end method

.method public static fixArticleIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"

    .prologue
    .line 306
    if-nez p0, :cond_1

    const-string v0, ""

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 308
    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 310
    .local v1, index:I
    const-string v0, ""

    .line 312
    .local v0, id:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 313
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static fixCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    const/16 v3, 0x2e

    .line 513
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 514
    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 515
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 513
    return-object v0
.end method

.method public static fixContentImageLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "content"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, -0x1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, contentBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 196
    .local v1, currentPosition:I
    const/4 v5, -0x1

    .line 197
    .local v5, startIndex:I
    const/4 v2, -0x1

    .line 199
    .local v2, endIndex:I
    const/4 v4, 0x0

    .line 203
    .local v4, imgFound:Z
    :cond_0
    const-string v11, "<img"

    invoke-virtual {p0, v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 205
    if-eq v5, v13, :cond_1

    .line 206
    const-string v11, "/>"

    invoke-virtual {p0, v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 210
    :goto_0
    if-eq v5, v13, :cond_2

    if-eq v2, v13, :cond_2

    move v4, v9

    .line 212
    :goto_1
    if-eqz v4, :cond_5

    .line 214
    const-string v11, "bbcimage"

    invoke-virtual {p0, v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 215
    .local v6, startOfUrl:I
    const-string v11, "\""

    invoke-virtual {p0, v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 216
    .local v3, endOfUrl:I
    if-eq v6, v13, :cond_3

    if-eq v3, v13, :cond_3

    move v8, v9

    .line 218
    .local v8, urlFound:Z
    :goto_2
    if-eqz v8, :cond_4

    .line 219
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lbbc/mobile/news/helper/LinkGenerator;->fixImageScheme(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, url:Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v11, "\" onload=\"this.parentNode.style.display=\'block\';\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v11, v3, 0x1

    const-string v12, "/>"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v11, "/>"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 235
    .end local v3           #endOfUrl:I
    .end local v6           #startOfUrl:I
    .end local v7           #url:Ljava/lang/String;
    .end local v8           #urlFound:Z
    :goto_3
    if-nez v4, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 208
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    move v4, v10

    .line 210
    goto :goto_1

    .restart local v3       #endOfUrl:I
    .restart local v6       #startOfUrl:I
    :cond_3
    move v8, v10

    .line 216
    goto :goto_2

    .line 226
    .restart local v8       #urlFound:Z
    :cond_4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v11, "/>"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 230
    goto :goto_3

    .line 231
    .end local v3           #endOfUrl:I
    .end local v6           #startOfUrl:I
    .end local v8           #urlFound:Z
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static fixContentVideoLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "content"

    .prologue
    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v3, contentBuilder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 245
    .local v4, currentPosition:I
    const/4 v8, -0x1

    .line 246
    .local v8, hrefStartPos:I
    const/4 v6, -0x1

    .line 248
    .local v6, hrefEndPos:I
    const/4 v7, 0x0

    .line 252
    .local v7, hrefFound:Z
    :cond_0
    const-string v17, "<a href=\""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 254
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_2

    .line 255
    const-string v17, "</a>"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 259
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_3

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_3

    const/4 v7, 0x1

    .line 261
    :goto_1
    if-eqz v7, :cond_7

    .line 263
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v17, "bbcvideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 266
    .local v14, startOfUrl:I
    const-string v17, "\""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 267
    .local v5, endOfUrl:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    const/4 v15, 0x1

    .line 269
    .local v15, urlFound:Z
    :goto_2
    if-eqz v15, :cond_6

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lbbc/mobile/news/helper/LinkGenerator;->fixVideoScheme(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 272
    .local v16, videoUrl:Ljava/lang/String;
    const-string v17, "<img"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 273
    .local v11, imgStartIndex:I
    const-string v17, "/>"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 274
    .local v9, imgEndIndex:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_5

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_5

    const/4 v10, 0x1

    .line 276
    .local v10, imgFound:Z
    :goto_3
    if-eqz v10, :cond_1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v12, linkBuilder:Ljava/lang/StringBuilder;
    const-string v17, "<img id=\"video\" data-url=\""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v17, "\" "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v17, v11, 0x4

    const-string v18, "/>"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v17, "<a href=\"javascript:window.jsinterface.onClickToPlay(\'"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v17, "\')\"><img id=\"cta\" class=\"play\" src=\"file:///android_res/raw/icon_play_button.png\"/></a>"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v17, "</a>"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v4, v6, v17

    .line 299
    .end local v5           #endOfUrl:I
    .end local v9           #imgEndIndex:I
    .end local v10           #imgFound:Z
    .end local v11           #imgStartIndex:I
    .end local v12           #linkBuilder:Ljava/lang/StringBuilder;
    .end local v14           #startOfUrl:I
    .end local v15           #urlFound:Z
    .end local v16           #videoUrl:Ljava/lang/String;
    :cond_1
    :goto_4
    if-nez v7, :cond_0

    .line 301
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 257
    :cond_2
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 259
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 267
    .restart local v5       #endOfUrl:I
    .restart local v14       #startOfUrl:I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 274
    .restart local v9       #imgEndIndex:I
    .restart local v11       #imgStartIndex:I
    .restart local v15       #urlFound:Z
    .restart local v16       #videoUrl:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 290
    .end local v9           #imgEndIndex:I
    .end local v11           #imgStartIndex:I
    .end local v16           #videoUrl:Ljava/lang/String;
    :cond_6
    const-string v17, "</a>"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v6, v17

    .line 291
    .local v13, newPosition:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move v4, v13

    .line 295
    goto :goto_4

    .line 296
    .end local v5           #endOfUrl:I
    .end local v13           #newPosition:I
    .end local v14           #startOfUrl:I
    .end local v15           #urlFound:Z
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static final fixDisplayCarousel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "displayCarousel"

    .prologue
    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v0, "unknown-carousel"

    .line 107
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string v1, "displayCarousel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oridginal displayCarousel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Lbbc/mobile/news/helper/LinkGenerator;->replaceAnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "[^a-zA-Z]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, carousel:Ljava/lang/String;
    const-string v1, "displayCarousel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "displayCarousel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final fixImageScheme(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "checkUri"

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 172
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bbcimage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-object p0

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v1, newurl:Ljava/lang/StringBuilder;
    const-string v4, "%7bdevice%7d"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, pos:I
    if-lez v2, :cond_1

    .line 180
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lbbc/mobile/news/util/GlobalSettings;->getImageBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {v0}, Lbbc/mobile/news/util/GlobalSettings;->getImageDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v4, "%7bdevice%7d"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    sget-object v4, Lbbc/mobile/news/helper/LinkGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fixImageScheme() new URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final fixVideoScheme(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "checkUri"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 149
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bbcvideo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-object p0

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v1, newurl:Ljava/lang/StringBuilder;
    const-string v4, "%7bdevice%7d"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 156
    .local v2, pos:I
    if-lez v2, :cond_1

    .line 157
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lbbc/mobile/news/util/GlobalSettings;->getVideoBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v0}, Lbbc/mobile/news/helper/FlashUtilsNew;->getMoiraVideoDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v4, "%7bdevice%7d"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 164
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    sget-object v4, Lbbc/mobile/news/helper/LinkGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fixVideoScheme() new URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fixWSAVImageLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 320
    if-eqz p0, :cond_1

    .line 322
    sget-object v3, Lbbc/mobile/news/helper/LinkGenerator;->WSAV_FIX_LINKS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 324
    .local v2, wsAVMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, old:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, link:Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_0
    const-string v3, "%7bdevice%7d"

    const-string v4, "android_tablet"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .end local v0           #link:Ljava/lang/String;
    .end local v1           #old:Ljava/lang/String;
    .end local v2           #wsAVMatcher:Ljava/util/regex/Matcher;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public static fixWSAVMediaLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 345
    if-eqz p0, :cond_1

    .line 347
    sget-object v3, Lbbc/mobile/news/helper/LinkGenerator;->WSAV_FIX_MEDIA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 349
    .local v2, wsAVMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, old:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, link:Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_0
    const-string v3, "%7bdevice%7d"

    sget-object v4, Lbbc/mobile/news/helper/LinkGenerator;->VIDEO_DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 365
    .end local v0           #link:Ljava/lang/String;
    .end local v1           #old:Ljava/lang/String;
    .end local v2           #wsAVMatcher:Ljava/util/regex/Matcher;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public static final fixZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "zoneCaracel"

    .prologue
    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const-string v4, "unknown-zone"

    .line 141
    :goto_0
    return-object v4

    .line 120
    :cond_0
    const-string v5, "adzone"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oridginal zoneCaracel: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, startOfString:I
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, indexOfSlash:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 126
    .local v0, endOfString:I
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_1

    .line 129
    const-string v5, "/"

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, indexOfSecondSlash:I
    if-lez v1, :cond_1

    .line 132
    move v0, v1

    .line 135
    .end local v1           #indexOfSecondSlash:I
    :cond_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 136
    const-string v6, "[^a-zA-Z]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, zone:Ljava/lang/String;
    const-string v5, "adzone"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "zone: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "article"
    .parameter "type"

    .prologue
    .line 453
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v4

    if-nez v4, :cond_1

    .line 454
    :cond_0
    const-string v2, ""

    .line 467
    :goto_0
    return-object v2

    .line 456
    :cond_1
    const-string v1, "news"

    .line 458
    .local v1, provider:Ljava/lang/String;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SPORT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    const-string v1, "sport"

    .line 461
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, urn:Ljava/lang/String;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getOriginalCategoryName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, category:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".page"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbbc/mobile/news/helper/LinkGenerator;->fixCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getArticleId(Lbbc/mobile/news/model/Article;)Ljava/lang/String;
    .locals 6
    .parameter "article"

    .prologue
    .line 425
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v5

    if-nez v5, :cond_2

    .line 426
    :cond_0
    const-string v0, ""

    .line 440
    :cond_1
    :goto_0
    return-object v0

    .line 429
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, urn:Ljava/lang/String;
    const-string v3, ".*:(.*?)$"

    .line 432
    .local v3, pattern:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 433
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 435
    .local v1, m:Ljava/util/regex/Matcher;
    const-string v0, "unknown"

    .line 437
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getArticleVisibleCarouselName(Lbbc/mobile/news/model/Article;)Ljava/lang/String;
    .locals 4
    .parameter "article"

    .prologue
    .line 412
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v2

    if-nez v2, :cond_1

    .line 413
    :cond_0
    const-string v1, ""

    .line 419
    :goto_0
    return-object v1

    .line 415
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, category:Ljava/lang/String;
    invoke-static {v0}, Lbbc/mobile/news/helper/LinkGenerator;->fixCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMedialetsArticleCounterString(Lbbc/mobile/news/model/Article;)Ljava/lang/String;
    .locals 3
    .parameter "article"

    .prologue
    .line 499
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 500
    :cond_0
    const-string v0, ""

    .line 502
    :goto_0
    return-object v0

    .line 501
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getOriginalCategoryName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/helper/LinkGenerator;->removeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getOmnitureArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "article"
    .parameter "type"

    .prologue
    .line 473
    const-string v4, "news"

    .line 475
    .local v4, provider:Ljava/lang/String;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v7

    invoke-virtual {v7}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SPORT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 476
    const-string v4, "sport"

    .line 478
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, urn:Ljava/lang/String;
    const-string v3, ".*:(.*?)$"

    .line 483
    .local v3, pattern:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 484
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 486
    .local v1, m:Ljava/util/regex/Matcher;
    const-string v0, "unknown"

    .line 488
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 492
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getOriginalCategoryName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 493
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 491
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lbbc/mobile/news/helper/LinkGenerator;->fixCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, result:Ljava/lang/String;
    return-object v5
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "filePath"

    .prologue
    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v6, sb:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 75
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 77
    .local v2, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "utf-8"

    invoke-direct {v7, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 89
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 91
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :goto_1
    return-object v4

    .line 82
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t load article template: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static removeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "input"

    .prologue
    .line 506
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 507
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 508
    const-string v0, "&"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 509
    return-object p0
.end method

.method public static final replaceAnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 526
    const-string v0, "&"

    const-string v1, "and"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setConnectionType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "connectionType"

    .prologue
    .line 542
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    sget-object v1, Lbbc/mobile/news/helper/LinkGenerator;->BANDWIDTH_MASKS:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 550
    .end local v0           #x:I
    .end local p0
    :goto_1
    return-object p0

    .line 545
    .restart local v0       #x:I
    .restart local p0
    :cond_0
    sget-object v1, Lbbc/mobile/news/helper/LinkGenerator;->BANDWIDTH_MASKS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v0           #x:I
    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static transform_device(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "attr_value"

    .prologue
    .line 531
    if-nez p0, :cond_0

    .line 532
    const/4 p0, 0x0

    .line 537
    .local v0, deviceType:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 535
    .end local v0           #deviceType:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 534
    invoke-static {v1}, Lbbc/mobile/news/helper/FlashUtilsNew;->getMoiraVideoDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0       #deviceType:Ljava/lang/String;
    const-string v1, "%7bdevice%7d"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 537
    goto :goto_0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 401
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 407
    :goto_0
    return-object p0

    .line 402
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 390
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 396
    :goto_0
    return-object p0

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "content"

    .prologue
    .line 371
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$string;->moira_device_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, deviceType:Ljava/lang/String;
    const-string v1, "%7bdevice%7d"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 374
    return-object p0
.end method
