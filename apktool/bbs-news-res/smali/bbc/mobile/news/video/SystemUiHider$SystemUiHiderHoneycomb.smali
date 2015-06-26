.class Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;
.super Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;
.source "SystemUiHider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/SystemUiHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemUiHiderHoneycomb"
.end annotation


# instance fields
.field private mHideFlags:I

.field private mShowFlags:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTestFlags:I

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2
    .parameter "activity"
    .parameter "anchorView"
    .parameter "flags"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 222
    iput-boolean v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mVisible:Z

    .line 283
    new-instance v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;-><init>(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;)V

    iput-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I

    .line 234
    iput v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mHideFlags:I

    .line 235
    iput v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mTestFlags:I

    .line 237
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 242
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I

    .line 243
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x404

    iput v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mHideFlags:I

    .line 246
    :cond_0
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1

    .line 248
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I

    .line 249
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x202

    iput v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mHideFlags:I

    .line 250
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mTestFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mTestFlags:I

    .line 252
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;)I
    .locals 1
    .parameter

    .prologue
    .line 216
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mTestFlags:I

    return v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-boolean p1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mVisible:Z

    return-void
.end method

.method static synthetic access$2(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;)I
    .locals 1
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mHideFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 266
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 259
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 273
    return-void
.end method
