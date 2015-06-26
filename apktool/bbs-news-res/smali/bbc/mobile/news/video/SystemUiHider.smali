.class public abstract Lbbc/mobile/news/video/SystemUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;,
        Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;,
        Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;,
        Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;
    }
.end annotation


# static fields
.field public static final FLAG_FULLSCREEN:I = 0x2

.field public static final FLAG_HIDE_ACTIONBAR:I = 0x8

.field public static final FLAG_HIDE_NAVIGATION:I = 0x6

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field private static sDummyListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mFlags:I

.field protected mOnVisibilityChangeListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lbbc/mobile/news/video/SystemUiHider$1;

    invoke-direct {v0}, Lbbc/mobile/news/video/SystemUiHider$1;-><init>()V

    sput-object v0, Lbbc/mobile/news/video/SystemUiHider;->sDummyListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    .line 174
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .parameter "activity"
    .parameter "anchorView"
    .parameter "flags"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lbbc/mobile/news/video/SystemUiHider;->sDummyListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    iput-object v0, p0, Lbbc/mobile/news/video/SystemUiHider;->mOnVisibilityChangeListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    .line 114
    iput-object p1, p0, Lbbc/mobile/news/video/SystemUiHider;->mActivity:Landroid/app/Activity;

    .line 115
    iput-object p2, p0, Lbbc/mobile/news/video/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 116
    iput p3, p0, Lbbc/mobile/news/video/SystemUiHider;->mFlags:I

    .line 117
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/view/View;I)Lbbc/mobile/news/video/SystemUiHider;
    .locals 2
    .parameter "activity"
    .parameter "anchorView"
    .parameter "flags"

    .prologue
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 105
    new-instance v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    invoke-direct {v0, p0, p1, p2}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;

    invoke-direct {v0, p0, p1, p2}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public createControlsUiHider(I)Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;
    .locals 2
    .parameter "defaultDelayMillis"

    .prologue
    .line 411
    new-instance v0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;-><init>(Lbbc/mobile/news/video/SystemUiHider;ILbbc/mobile/news/video/SystemUiHider$ControlsUiHider;)V

    return-object v0
.end method

.method public abstract hide()V
.end method

.method public abstract isVisible()Z
.end method

.method public setOnVisibilityChangeListener(Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    sget-object p1, Lbbc/mobile/news/video/SystemUiHider;->sDummyListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    .line 161
    :cond_0
    iput-object p1, p0, Lbbc/mobile/news/video/SystemUiHider;->mOnVisibilityChangeListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    .line 162
    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract show()V
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lbbc/mobile/news/video/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lbbc/mobile/news/video/SystemUiHider;->hide()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/video/SystemUiHider;->show()V

    goto :goto_0
.end method
