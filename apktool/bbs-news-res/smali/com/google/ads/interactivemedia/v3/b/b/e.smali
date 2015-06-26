.class public final Lcom/google/ads/interactivemedia/v3/b/b/e;
.super Landroid/widget/RelativeLayout;
.source "IMASDK"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/ads/interactivemedia/v3/b/s$c;
.implements Lcom/google/ads/interactivemedia/v3/b/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/e$2;,
        Lcom/google/ads/interactivemedia/v3/b/b/e$b;,
        Lcom/google/ads/interactivemedia/v3/b/b/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/b/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:F

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/b/s;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

.field private j:Lcom/google/ads/interactivemedia/v3/b/b/b;

.field private k:Lcom/google/ads/interactivemedia/v3/b/b/d;

.field private l:Lcom/google/ads/interactivemedia/v3/b/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/b/d;Lcom/google/ads/interactivemedia/v3/b/s;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->b:Ljava/util/List;

    .line 60
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->f:Z

    .line 75
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->e:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 76
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->d:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->k:Lcom/google/ads/interactivemedia/v3/b/b/d;

    .line 78
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->c:F

    .line 80
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->k:Lcom/google/ads/interactivemedia/v3/b/b/d;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/b/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->l:Lcom/google/ads/interactivemedia/v3/b/b/a;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->l:Lcom/google/ads/interactivemedia/v3/b/b/a;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->l:Lcom/google/ads/interactivemedia/v3/b/b/a;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b/e$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/b/b/e$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/e;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a;->a(Lcom/google/ads/interactivemedia/v3/b/b/a$a;)V

    .line 81
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->a:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/b;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->j:Lcom/google/ads/interactivemedia/v3/b/b/b;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->j:Lcom/google/ads/interactivemedia/v3/b/b/b;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xf

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->c:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/c;->a(IF)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->f:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->k:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/d;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x19

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->c:F

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/c;->a(IF)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/b/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->f:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->l:Lcom/google/ads/interactivemedia/v3/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a;->a(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->l:Lcom/google/ads/interactivemedia/v3/b/b/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->l:Lcom/google/ads/interactivemedia/v3/b/b/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a;->b(Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    .prologue
    .line 88
    return-object p0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 174
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->k:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/d;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->b(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->e:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/r$b;->i18n:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$c;->learnMore:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 177
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/e$b;->b:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->i:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    .line 179
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 181
    const-string v1, "seconds"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->e:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$b;->i18n:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/r$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 190
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/b/b/e;->setVisibility(I)V

    .line 191
    return-void

    .line 185
    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/e$b;->a:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->i:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    .line 186
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v8, 0x4270

    const/4 v9, 0x0

    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v2

    sub-float v2, v0, v2

    .line 199
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->g:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    .line 200
    :goto_1
    if-eqz v0, :cond_2

    .line 201
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 202
    const-string v4, "minutes"

    div-float v5, v2, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v4, "seconds"

    rem-float v5, v2, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->e:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/b/r$b;->i18n:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/r$c;->adRemainingTime:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->i:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/b/e$b;->b:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    if-ne v3, v4, :cond_0

    .line 210
    const/high16 v3, 0x40a0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v4

    sub-float/2addr v3, v4

    .line 211
    cmpg-float v4, v3, v9

    if-gtz v4, :cond_4

    .line 212
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/e$b;->c:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->i:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    .line 213
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->e:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$b;->i18n:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/r$c;->skipButton:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 215
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 199
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 218
    :cond_4
    if-eqz v0, :cond_5

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 220
    const-string v1, "seconds"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->e:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/r$b;->i18n:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/b/r$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 224
    :cond_5
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->g:F

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/b/e$a;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/e$2;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/b/b/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->j:Lcom/google/ads/interactivemedia/v3/b/b/b;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->i:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/b/e$b;->c:Lcom/google/ads/interactivemedia/v3/b/b/e$b;

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/b/e$a;

    .line 243
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b/e$a;->a()V

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method
