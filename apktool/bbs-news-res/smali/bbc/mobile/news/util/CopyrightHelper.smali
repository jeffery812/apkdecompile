.class public Lbbc/mobile/news/util/CopyrightHelper;
.super Ljava/lang/Object;
.source "CopyrightHelper.java"


# static fields
.field private static final INSTANCE:Lbbc/mobile/news/util/CopyrightHelper;


# instance fields
.field private mCopyrightText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lbbc/mobile/news/util/CopyrightHelper;

    invoke-direct {v0}, Lbbc/mobile/news/util/CopyrightHelper;-><init>()V

    sput-object v0, Lbbc/mobile/news/util/CopyrightHelper;->INSTANCE:Lbbc/mobile/news/util/CopyrightHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lbbc/mobile/news/util/CopyrightHelper;->mCopyrightText:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public static final getInstance()Lbbc/mobile/news/util/CopyrightHelper;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lbbc/mobile/news/util/CopyrightHelper;->INSTANCE:Lbbc/mobile/news/util/CopyrightHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCopyrightText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/util/CopyrightHelper;->mCopyrightText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCopyrightText(Ljava/lang/String;)V
    .locals 1
    .parameter "copyright"

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iput-object p1, p0, Lbbc/mobile/news/util/CopyrightHelper;->mCopyrightText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    monitor-exit p0

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
