.class public Lbbc/mobile/news/helper/TextSizeHelper;
.super Ljava/lang/Object;
.source "TextSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIZE:I = 0x0

.field public static final MAX_SIZE:I = 0x4

.field public static final SIZE_0:I = -0x1

.field public static final SIZE_1:I = 0x0

.field public static final SIZE_2:I = 0x1

.field public static final SIZE_3:I = 0x2

.field public static final SIZE_4:I = 0x3

.field public static final SIZE_5:I = 0x4

.field public static final SIZE_6:I = 0x5

.field public static final TAG:Ljava/lang/String; = null

.field private static final TEXT_SIZE_KEY:Ljava/lang/String; = "TxtSize"

.field private static final TEXT_SIZE_PREF_KEY:Ljava/lang/String; = "TxtSizeKey"

.field private static mInstance:Lbbc/mobile/news/helper/TextSizeHelper;


# instance fields
.field private mCurrentSize:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveSize:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lbbc/mobile/news/helper/TextSizeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/TextSizeHelper;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mSaveSize:Z

    .line 33
    iput v2, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mListeners:Ljava/util/ArrayList;

    .line 38
    const-string v0, "TxtSizeKey"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 39
    iget-object v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TxtSize"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mSaveSize:Z

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lbbc/mobile/news/helper/TextSizeHelper;->mInstance:Lbbc/mobile/news/helper/TextSizeHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lbbc/mobile/news/helper/TextSizeHelper;

    invoke-direct {v0, p0}, Lbbc/mobile/news/helper/TextSizeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbbc/mobile/news/helper/TextSizeHelper;->mInstance:Lbbc/mobile/news/helper/TextSizeHelper;

    .line 47
    :cond_0
    sget-object v0, Lbbc/mobile/news/helper/TextSizeHelper;->mInstance:Lbbc/mobile/news/helper/TextSizeHelper;

    return-object v0
.end method

.method private saveNewSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 114
    iget-object v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "TxtSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method


# virtual methods
.method public canDecreaseTextSize()Z
    .locals 2

    .prologue
    .line 55
    const/4 v0, -0x1

    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canIncreaseTextSize()Z
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decreaseTextSize(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)I
    .locals 3
    .parameter "firstListener"

    .prologue
    .line 91
    invoke-virtual {p0}, Lbbc/mobile/news/helper/TextSizeHelper;->canDecreaseTextSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    .line 93
    iget-boolean v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mSaveSize:Z

    if-eqz v1, :cond_0

    .line 94
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-direct {p0, v1}, Lbbc/mobile/news/helper/TextSizeHelper;->saveNewSize(I)V

    .line 96
    :cond_0
    if-eqz p1, :cond_1

    .line 97
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-interface {p1, v1}, Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;->onTextSizeChanged(I)V

    .line 100
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 108
    :cond_3
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    iget v2, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-virtual {v1, v2}, Lbbc/mobile/news/stats/Stats;->logDecreaseFontSizeACTION(I)Lbbc/mobile/news/stats/Stats;

    .line 110
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    return v1

    .line 100
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;

    .line 101
    .local v0, listener:Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;
    if-eq v0, p1, :cond_2

    .line 102
    iget v2, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-interface {v0, v2}, Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;->onTextSizeChanged(I)V

    goto :goto_0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    return v0
.end method

.method public increaseTextSize(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)I
    .locals 3
    .parameter "firstListener"

    .prologue
    .line 68
    invoke-virtual {p0}, Lbbc/mobile/news/helper/TextSizeHelper;->canIncreaseTextSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    .line 70
    iget-boolean v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mSaveSize:Z

    if-eqz v1, :cond_0

    .line 71
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-direct {p0, v1}, Lbbc/mobile/news/helper/TextSizeHelper;->saveNewSize(I)V

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-interface {p1, v1}, Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;->onTextSizeChanged(I)V

    .line 76
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 84
    :cond_3
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    iget v2, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-virtual {v1, v2}, Lbbc/mobile/news/stats/Stats;->logIncreaseFontSizeACTION(I)Lbbc/mobile/news/stats/Stats;

    .line 86
    iget v1, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    return v1

    .line 76
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;

    .line 77
    .local v0, listener:Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;
    if-eq v0, p1, :cond_2

    .line 78
    iget v2, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-interface {v0, v2}, Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;->onTextSizeChanged(I)V

    goto :goto_0
.end method

.method public registerChangeListener(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 120
    iget-object v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public setTextSize(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    invoke-interface {p1, v0}, Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;->onTextSizeChanged(I)V

    .line 63
    :cond_0
    iget v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mCurrentSize:I

    return v0
.end method

.method public unregisterAllListeners()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    return-void
.end method

.method public unregisterChangeListener(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)V
    .locals 1
    .parameter "listerner"

    .prologue
    .line 124
    iget-object v0, p0, Lbbc/mobile/news/helper/TextSizeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
