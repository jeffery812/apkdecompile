.class public Lbbc/mobile/news/ReportActivity;
.super Lbbc/mobile/news/BaseActivity;
.source "ReportActivity.java"


# static fields
.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio"

.field private static final DELIMITER:Ljava/lang/String; = ", "

.field private static final EMAIL_SEND_METHOD:I = 0x1

.field private static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image"

.field private static final INVALID_INDEX:I = -0x1

.field public static final ONE_GB:J = 0x40000000L

.field public static final ONE_KB:J = 0x400L

.field public static final ONE_MB:J = 0x100000L

.field private static final SELECT_AUDIO:I = 0x4

.field private static final SELECT_IMAGE:I = 0x2

.field private static final SELECT_VIDEO:I = 0x3

.field private static final SEND_ATTACHMENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = null

.field private static final TEXT_PLANE:Ljava/lang/String; = "text/plain"

.field private static final TEXT_SEND_METHOD:I = 0x2

.field private static final TEXT_TYPE:Ljava/lang/String; = "text"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video"


# instance fields
.field private mAttachment:Ljava/lang/String;

.field private mAttachmentNameView:Landroid/widget/TextView;

.field private mAttachmentTypeAndSizeView:Landroid/widget/TextView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mConfig:Lbbc/mobile/news/model/Config;

.field private mFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mFeedbackLink:Landroid/widget/TextView;

.field private mIconImageView:Landroid/widget/ImageView;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/EditText;

.field private mMimeType:Ljava/lang/String;

.field private mName:Landroid/widget/EditText;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

.field private mReportMessage:Landroid/widget/EditText;

.field private mReportSendDialog:Lbbc/mobile/news/dialog/ReportSendDialog;

.field private mSendButton:Landroid/widget/Button;

.field private mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

.field private mShareToggleListener:Landroid/view/View$OnClickListener;

.field private mTOSLink:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lbbc/mobile/news/ReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/ReportActivity;->TAG:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lbbc/mobile/news/BaseActivity;-><init>()V

    .line 93
    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 583
    new-instance v0, Lbbc/mobile/news/ReportActivity$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ReportActivity$1;-><init>(Lbbc/mobile/news/ReportActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 596
    new-instance v0, Lbbc/mobile/news/ReportActivity$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ReportActivity$2;-><init>(Lbbc/mobile/news/ReportActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mShareToggleListener:Landroid/view/View$OnClickListener;

    .line 612
    new-instance v0, Lbbc/mobile/news/ReportActivity$3;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ReportActivity$3;-><init>(Lbbc/mobile/news/ReportActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/ReportActivity;->getSendIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/ReportActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lbbc/mobile/news/ReportActivity;->sendMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ShareListDialog;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

    return-object v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/ReportActivity;Landroid/content/Intent;Z)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/ReportActivity;->getShareList(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ReportDialog;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    return-object v0
.end method

.method static synthetic access$5(Lbbc/mobile/news/ReportActivity;Landroid/app/Dialog;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V

    return-void
.end method

.method static synthetic access$6(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/ReportActivity;->openChooser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7(Lbbc/mobile/news/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lbbc/mobile/news/ReportActivity;->clearAttachment()V

    return-void
.end method

.method static synthetic access$8(Lbbc/mobile/news/ReportActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lbbc/mobile/news/ReportActivity;->setSendMethod(I)V

    return-void
.end method

.method static synthetic access$9(Lbbc/mobile/news/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    invoke-direct {p0}, Lbbc/mobile/news/ReportActivity;->startFeedbackEmail()V

    return-void
.end method

.method private byteCountToDisplaySize(J)Ljava/lang/String;
    .locals 13
    .parameter "size"

    .prologue
    const-wide/32 v10, 0x40000000

    const-wide/32 v8, 0x100000

    const-wide/16 v6, 0x400

    const-wide/16 v4, 0x0

    .line 677
    div-long v2, p1, v10

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    div-long v2, p1, v10

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, displaySize:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 679
    .end local v0           #displaySize:Ljava/lang/String;
    :cond_0
    div-long v2, p1, v8

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    div-long v2, p1, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .restart local v0       #displaySize:Ljava/lang/String;
    goto :goto_0

    .end local v0           #displaySize:Ljava/lang/String;
    :cond_1
    div-long v2, p1, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    div-long v2, p1, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .restart local v0       #displaySize:Ljava/lang/String;
    goto :goto_0

    .line 684
    .end local v0           #displaySize:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displaySize:Ljava/lang/String;
    goto :goto_0
.end method

.method private clearAttachment()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    .line 310
    const-string v0, "text/plain"

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    .line 311
    invoke-direct {p0, v1, v1}, Lbbc/mobile/news/ReportActivity;->setAttachmentVisiblity(II)V

    .line 312
    return-void
.end method

.method private createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "uri"

    .prologue
    .line 398
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lbbc/mobile/news/R$dimen;->report_image_preview_dimen:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 399
    .local v0, REQUIRED_SIZE:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 400
    .local v8, preSaleOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 403
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 404
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 407
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 408
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {v5, v9, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 409
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    .end local v5           #inputStream:Ljava/io/InputStream;
    :goto_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 418
    .local v7, postSaleOptions:Landroid/graphics/BitmapFactory$Options;
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v9, v10, v0, v0}, Lbbc/mobile/news/util/ImageUtils;->getWidthAndHeightFactor(IIII)I

    move-result v9

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 421
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 422
    .restart local v5       #inputStream:Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {v5, v9, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 423
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 430
    .end local v5           #inputStream:Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 411
    .end local v7           #postSaleOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    .line 412
    .local v4, fnfException:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v4           #fnfException:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 414
    .local v6, ioExceptoin:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v6           #ioExceptoin:Ljava/io/IOException;
    .restart local v7       #postSaleOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v3

    .line 425
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 427
    .restart local v6       #ioExceptoin:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getData(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 170
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 171
    .local v1, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 173
    .local v6, extras:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 175
    .local v4, dataUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 176
    .local v7, objectStream:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 177
    .local v3, stream:Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, text:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 180
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 183
    if-eqz v7, :cond_0

    .line 184
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v7           #objectStream:Ljava/lang/Object;
    :cond_0
    move-object v0, p0

    .line 187
    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/ReportActivity;->setAttachment(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-direct {p0}, Lbbc/mobile/news/ReportActivity;->clearAttachment()V

    .line 189
    :cond_1
    return-void
.end method

.method private getSendIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 443
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v3, sendIntent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 446
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    :cond_0
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 449
    const-string v5, "text/plain"

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    .line 451
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v1, messageBuilder:Ljava/lang/StringBuilder;
    const-string v0, "talkingpoint@bbc.co.uk"

    .line 454
    .local v0, emailAddress:Ljava/lang/String;
    const-string v2, "+447725100100"

    .line 456
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v5, :cond_3

    .line 458
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 460
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getUgcEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 461
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getUgcEmail()Ljava/lang/String;

    move-result-object v0

    .line 468
    :cond_2
    :goto_0
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getUgcSmsNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 469
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getUgcSmsNumber()Ljava/lang/String;

    move-result-object v2

    .line 472
    :cond_3
    sget v5, Lbbc/mobile/news/R$string;->report_subject:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, subject:Ljava/lang/String;
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportMessage:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 475
    const-string v5, "\n\nName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 476
    const-string v5, "\nPhone number: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 477
    const-string v5, "\nLocation: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mLocation:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 478
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v5, "android.intent.extra.EMAIL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v5, "address"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 488
    const-string v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 491
    :cond_4
    return-object v3

    .line 464
    .end local v4           #subject:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getUgcImagesEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 465
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getUgcImagesEmail()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getShareList(Landroid/content/Intent;Z)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "showAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 695
    .local v0, availableActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_0

    .line 696
    invoke-static {}, Lbbc/mobile/news/util/ShareList;->getInstance()Lbbc/mobile/news/util/ShareList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbbc/mobile/news/util/ShareList;->getFilteredBlackListedApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 698
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lbbc/mobile/news/util/ShareList;->getInstance()Lbbc/mobile/news/util/ShareList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbbc/mobile/news/util/ShareList;->getWhiteListedApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private getStreamOrData(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .parameter "stream"
    .parameter "data"

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 244
    .end local p1
    :goto_0
    return-object p1

    .line 241
    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    .line 242
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 244
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private initSelector(Lbbc/mobile/news/dialog/ReportDialog;IILandroid/content/res/Resources;)Lbbc/mobile/news/dialog/ReportDialog;
    .locals 2
    .parameter "dialog"
    .parameter "buttonId"
    .parameter "drawableRed"
    .parameter "resources"

    .prologue
    .line 161
    invoke-virtual {p1, p2}, Lbbc/mobile/news/dialog/ReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    sget v1, Lbbc/mobile/news/R$id;->reportDialogIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    return-object p1
.end method

.method private isValidated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 565
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mReportMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 566
    sget v1, Lbbc/mobile/news/R$string;->report_comments_error:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 580
    :goto_0
    return v0

    .line 570
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 571
    sget v1, Lbbc/mobile/news/R$string;->report_name_error:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mLocation:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 576
    sget v1, Lbbc/mobile/news/R$string;->report_location_error:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 580
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openChooser(Ljava/lang/String;I)V
    .locals 3
    .parameter "mimeType"
    .parameter "requestCode"

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    sget v1, Lbbc/mobile/news/R$string;->report_select_app:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lbbc/mobile/news/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 439
    return-void
.end method

.method private requestConfig(I)V
    .locals 3
    .parameter "strategy"

    .prologue
    .line 193
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 194
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lbbc/mobile/news/feed/FeedManager;->addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 195
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 196
    return-void
.end method

.method private sendMessage(Landroid/content/Intent;)V
    .locals 7
    .parameter "sendIntent"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 497
    invoke-static {p0}, Lbbc/mobile/news/helper/ConnectivityStatus;->getConnectionTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, connectivity:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 500
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbbc/mobile/news/stats/Stats;->logSendToBBCNewsSubmitACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 501
    invoke-virtual {p0, p1, v5}, Lbbc/mobile/news/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-direct {p0}, Lbbc/mobile/news/ReportActivity;->isValidated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    invoke-direct {p0, v6, v6}, Lbbc/mobile/news/ReportActivity;->getSendIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 509
    invoke-direct {p0, p1, v4}, Lbbc/mobile/news/ReportActivity;->getShareList(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v2

    .line 510
    .local v2, shareList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    .line 511
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 512
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 513
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 514
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbbc/mobile/news/stats/Stats;->logSendToBBCNewsSubmitACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 515
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lbbc/mobile/news/ReportActivity;->getSendIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lbbc/mobile/news/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 519
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 520
    iget-object v3, p0, Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

    invoke-virtual {v3, v4}, Lbbc/mobile/news/dialog/ShareListDialog;->setShowingAll(Z)V

    .line 521
    iget-object v3, p0, Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

    invoke-virtual {v3, v2}, Lbbc/mobile/news/dialog/ShareListDialog;->setData(Ljava/util/List;)V

    .line 522
    iget-object v3, p0, Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

    invoke-virtual {v3}, Lbbc/mobile/news/dialog/ShareListDialog;->show()V

    goto :goto_0

    .line 524
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 525
    sget v3, Lbbc/mobile/news/R$string;->report_no_email_apps:I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lbbc/mobile/news/ReportActivity;->showToastError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAttachment(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .parameter "contentResolver"
    .parameter "mimeType"
    .parameter "stream"
    .parameter "dataUri"
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 201
    if-eqz p5, :cond_1

    .line 202
    invoke-direct {p0, p5, p2}, Lbbc/mobile/news/ReportActivity;->setTextAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    invoke-direct {p0, p3, p4}, Lbbc/mobile/news/ReportActivity;->getStreamOrData(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 208
    if-eqz p2, :cond_2

    const-string v2, "application"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    const/4 p2, 0x0

    .line 211
    :cond_2
    if-nez p2, :cond_3

    .line 212
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 216
    :cond_3
    if-nez p2, :cond_4

    .line 217
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 221
    :cond_4
    if-eqz p2, :cond_0

    .line 223
    const-string v2, "text"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    invoke-direct {p0, p5, p2}, Lbbc/mobile/news/ReportActivity;->setTextAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 225
    :cond_5
    const-string v2, "image"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/ReportActivity;->setImageAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 227
    :cond_6
    const-string v2, "video"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 228
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/ReportActivity;->setVideoAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 229
    :cond_7
    const-string v2, "audio"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/ReportActivity;->setAudioAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private setAttachmentDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "stringUri"
    .parameter "mimeType"

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v17, typeAndSizeBuilder:Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 320
    .local v3, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 321
    .local v12, name:Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 323
    .local v14, size:J
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "file"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    :try_start_0
    new-instance v11, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 327
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 328
    invoke-virtual {v11}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 364
    .end local v11           #file:Ljava/io/File;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 366
    const-string v2, "image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 367
    sget v2, Lbbc/mobile/news/R$string;->report_image_attachment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_2
    :goto_2
    if-eqz v12, :cond_a

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbc/mobile/news/ReportActivity;->mAttachmentNameView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Attachment: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-lez v2, :cond_3

    .line 383
    const-string v2, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lbbc/mobile/news/ReportActivity;->byteCountToDisplaySize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbc/mobile/news/ReportActivity;->mAttachmentTypeAndSizeView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :catch_0
    move-exception v10

    .line 331
    .local v10, ex:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 336
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_display_name"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "_size"

    aput-object v5, v4, v2

    .line 337
    .local v4, proj:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lbbc/mobile/news/ReportActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 339
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 341
    const-string v2, "_display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 342
    .local v13, nameIndex:I
    const-string v2, "_size"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 344
    .local v16, sizeIndex:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    const/4 v2, -0x1

    if-eq v13, v2, :cond_5

    .line 347
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 350
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_6

    .line 351
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 353
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-gtz v2, :cond_1

    .line 356
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lbbc/mobile/news/ReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 357
    .local v9, descriptor:Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_1

    .line 358
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v14

    goto/16 :goto_1

    .line 368
    .end local v4           #proj:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #descriptor:Landroid/os/ParcelFileDescriptor;
    .end local v13           #nameIndex:I
    .end local v16           #sizeIndex:I
    :cond_7
    const-string v2, "video"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 369
    sget v2, Lbbc/mobile/news/R$string;->report_video_attachment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 370
    :cond_8
    const-string v2, "audio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 371
    sget v2, Lbbc/mobile/news/R$string;->report_audio_attachment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 373
    :cond_9
    sget v2, Lbbc/mobile/news/R$string;->report_file_attachment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 380
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbc/mobile/news/ReportActivity;->mAttachmentNameView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 359
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v13       #nameIndex:I
    .restart local v16       #sizeIndex:I
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private setAttachmentVisiblity(II)V
    .locals 1
    .parameter "iconVisibilitiy"
    .parameter "textVisibility"

    .prologue
    .line 391
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mAttachmentNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mAttachmentTypeAndSizeView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    return-void
.end method

.method private setAudioAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "attachment"
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$drawable;->icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iput-object p1, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    .line 283
    iput-object p2, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    iget-object v2, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/ReportActivity;->setAttachmentDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lbbc/mobile/news/ReportActivity;->setAttachmentVisiblity(II)V

    .line 286
    const/4 v0, 0x1

    .line 289
    :cond_0
    return v0
.end method

.method private setImageAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "attachment"
    .parameter "mimeType"

    .prologue
    const/4 v1, 0x0

    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-direct {p0, p1}, Lbbc/mobile/news/ReportActivity;->createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 252
    iput-object p1, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    .line 253
    iput-object p2, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    iget-object v3, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lbbc/mobile/news/ReportActivity;->setAttachmentDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lbbc/mobile/news/ReportActivity;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    invoke-direct {p0, v1, v1}, Lbbc/mobile/news/ReportActivity;->setAttachmentVisiblity(II)V

    .line 257
    const/4 v1, 0x1

    .line 261
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return v1
.end method

.method private setSendMethod(I)V
    .locals 2
    .parameter "method"

    .prologue
    .line 716
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mReportSendDialog:Lbbc/mobile/news/dialog/ReportSendDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V

    .line 717
    return-void
.end method

.method private setTextAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "text"
    .parameter "mimeType"

    .prologue
    const/16 v3, 0x8

    .line 294
    if-eqz p1, :cond_0

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    .line 297
    const-string v0, "text/plain"

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mReportMessage:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$drawable;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-direct {p0, v3, v3}, Lbbc/mobile/news/ReportActivity;->setAttachmentVisiblity(II)V

    .line 301
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVideoAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "attachment"
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$drawable;->icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iput-object p1, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    iget-object v2, p0, Lbbc/mobile/news/ReportActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/ReportActivity;->setAttachmentDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lbbc/mobile/news/ReportActivity;->setAttachmentVisiblity(II)V

    .line 272
    const/4 v0, 0x1

    .line 275
    :cond_0
    return v0
.end method

.method private showReportDialog(Landroid/app/Dialog;Z)V
    .locals 1
    .parameter "dialog"
    .parameter "show"

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 556
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private showToastError(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 720
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 721
    return-void
.end method

.method private startFeedbackEmail()V
    .locals 4

    .prologue
    .line 704
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getFeedbackMailToUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 705
    .local v0, emailAddressUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 708
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lbbc/mobile/news/ReportActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v2

    .line 710
    .local v2, notFound:Landroid/content/ActivityNotFoundException;
    sget v3, Lbbc/mobile/news/R$string;->report_no_email_apps:I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lbbc/mobile/news/ReportActivity;->showToastError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 533
    packed-switch p1, :pswitch_data_0

    .line 542
    if-ne p2, v0, :cond_1

    .line 543
    invoke-direct {p0, p3}, Lbbc/mobile/news/ReportActivity;->getData(Landroid/content/Intent;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 536
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->finish()V

    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mAttachment:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 0
    .parameter "config"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 665
    iput-object p1, p0, Lbbc/mobile/news/ReportActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 666
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 101
    const/4 v5, 0x1

    iput-boolean v5, p0, Lbbc/mobile/news/ReportActivity;->mHasActionBar:Z

    .line 103
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget v5, Lbbc/mobile/news/R$layout;->report_activity_layout:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    .local v3, resources:Landroid/content/res/Resources;
    sget v5, Lbbc/mobile/news/R$id;->reportMessage:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportMessage:Landroid/widget/EditText;

    .line 109
    sget v5, Lbbc/mobile/news/R$id;->reportName:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mName:Landroid/widget/EditText;

    .line 110
    sget v5, Lbbc/mobile/news/R$id;->reportPhoneNumber:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mPhoneNumber:Landroid/widget/EditText;

    .line 111
    sget v5, Lbbc/mobile/news/R$id;->reportLocation:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mLocation:Landroid/widget/EditText;

    .line 112
    sget v5, Lbbc/mobile/news/R$id;->reportImageView:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mIconImageView:Landroid/widget/ImageView;

    .line 113
    sget v5, Lbbc/mobile/news/R$id;->reportSendButton:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mSendButton:Landroid/widget/Button;

    .line 114
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mSendButton:Landroid/widget/Button;

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v5, Lbbc/mobile/news/R$id;->reportAttachmentName:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mAttachmentNameView:Landroid/widget/TextView;

    .line 116
    sget v5, Lbbc/mobile/news/R$id;->reportAttachmentTypeAndSize:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mAttachmentTypeAndSizeView:Landroid/widget/TextView;

    .line 118
    sget v5, Lbbc/mobile/news/R$id;->reportTermsOfServiceLink:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mTOSLink:Landroid/widget/TextView;

    .line 119
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mTOSLink:Landroid/widget/TextView;

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v5, Lbbc/mobile/news/R$id;->reportFeedbackLink:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mFeedbackLink:Landroid/widget/TextView;

    .line 122
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mFeedbackLink:Landroid/widget/TextView;

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v5, Lbbc/mobile/news/dialog/ReportDialog;

    invoke-direct {v5, p0}, Lbbc/mobile/news/dialog/ReportDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    .line 125
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    sget v6, Lbbc/mobile/news/R$id;->reportDialogVideoButton:I

    sget v7, Lbbc/mobile/news/R$drawable;->playvideo_selector:I

    invoke-direct {p0, v5, v6, v7, v3}, Lbbc/mobile/news/ReportActivity;->initSelector(Lbbc/mobile/news/dialog/ReportDialog;IILandroid/content/res/Resources;)Lbbc/mobile/news/dialog/ReportDialog;

    move-result-object v5

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    .line 126
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    sget v6, Lbbc/mobile/news/R$id;->reportDialogAudioButton:I

    sget v7, Lbbc/mobile/news/R$drawable;->playaudio_selector:I

    invoke-direct {p0, v5, v6, v7, v3}, Lbbc/mobile/news/ReportActivity;->initSelector(Lbbc/mobile/news/dialog/ReportDialog;IILandroid/content/res/Resources;)Lbbc/mobile/news/dialog/ReportDialog;

    move-result-object v5

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    .line 127
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lbbc/mobile/news/dialog/ReportDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v5, Lbbc/mobile/news/dialog/ReportSendDialog;

    invoke-direct {v5, p0}, Lbbc/mobile/news/dialog/ReportSendDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportSendDialog:Lbbc/mobile/news/dialog/ReportSendDialog;

    .line 130
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mReportSendDialog:Lbbc/mobile/news/dialog/ReportSendDialog;

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lbbc/mobile/news/dialog/ReportSendDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v5, Lbbc/mobile/news/dialog/ShareListDialog;

    invoke-direct {v5, p0}, Lbbc/mobile/news/dialog/ShareListDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

    .line 133
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mShareToggleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lbbc/mobile/news/dialog/ShareListDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v5, p0, Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;

    iget-object v6, p0, Lbbc/mobile/news/ReportActivity;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lbbc/mobile/news/dialog/ShareListDialog;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v5, Lbbc/mobile/news/feed/FeedManager;

    const-string v6, "ReportActivity-FeedManager"

    invoke-direct {v5, v6}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lbbc/mobile/news/ReportActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 138
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lbbc/mobile/news/ReportActivity;->requestConfig(I)V

    .line 140
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0}, Lbbc/mobile/news/helper/ConnectivityStatus;->getConnectionTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, connectivty:Ljava/lang/String;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v5

    invoke-virtual {v5}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v4

    .line 143
    .local v4, stats:Lbbc/mobile/news/stats/Stats;
    invoke-virtual {v4}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v2

    .line 145
    .local v2, omniture:Lbbc/mobile/news/stats/Omniture3;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SEND"

    if-ne v5, v6, :cond_2

    .line 146
    invoke-virtual {v4, v0}, Lbbc/mobile/news/stats/Stats;->logSendToBBCNewsGalleryACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 151
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v2, p0}, Lbbc/mobile/news/stats/Omniture3;->logSendToBBCNewsClick(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;

    .line 155
    :cond_1
    invoke-direct {p0, v1}, Lbbc/mobile/news/ReportActivity;->getData(Landroid/content/Intent;)V

    .line 156
    return-void

    .line 147
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    if-ne v5, v6, :cond_0

    .line 148
    invoke-virtual {v4, v0}, Lbbc/mobile/news/stats/Stats;->logSendToBBCNewsClickACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 647
    invoke-virtual {p0}, Lbbc/mobile/news/ReportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 648
    .local v0, inflater:Landroid/view/MenuInflater;
    sget v1, Lbbc/mobile/news/R$menu;->report_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 649
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->quit()V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/ReportActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 728
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onDestroy()V

    .line 729
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 655
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 656
    .local v0, id:I
    sget v2, Lbbc/mobile/news/R$id;->optMenuAttachAction:I

    if-ne v0, v2, :cond_0

    .line 657
    iget-object v2, p0, Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;

    invoke-direct {p0, v2, v1}, Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V

    .line 660
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public startReportActivity()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method
