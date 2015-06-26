.class public Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;
.super Ljava/lang/Object;
.source "BaseCustomDependencyInjectionInit.java"

# interfaces
.implements Lbbc/mobile/news/helper/DependencyInjection;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseCustomDependencyInjectionInit"


# instance fields
.field hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lbbc/mobile/news/helper/NewsServiceConstants;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "applicationPackage"
    .parameter "appContext"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->hashMap:Ljava/util/HashMap;

    .line 37
    new-instance v2, Lbbc/mobile/news/helper/UserAgent;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 38
    sget v4, Lbbc/mobile/news/R$string;->app_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-direct {v2, v3, p1}, Lbbc/mobile/news/helper/UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v2, userAgent:Lbbc/mobile/news/helper/UserAgent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, imageCacheDir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, dataDir:Ljava/lang/String;
    const-string v3, "BaseCustomDependencyInjectionInit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "imageCacheDir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "BaseCustomDependencyInjectionInit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dataDir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v0}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->ensureDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    const-string v3, "BaseCustomDependencyInjectionInit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "could not create an specific data dir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-direct {p0, v1}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->ensureDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    const-string v3, "BaseCustomDependencyInjectionInit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "could not create an specific image dir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->DATA_CACHE_DIR:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-virtual {p0, v3, v0}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 58
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->IMAGE_CACHE_DIR:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-virtual {p0, v3, v1}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 59
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->APPLICATION_PACKAGE:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-virtual {p0, v3, p1}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 60
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->APPLICATION_CONTEXT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-virtual {p0, v3, p2}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 61
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->USER_AGENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-virtual {p0, v3, v2}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 62
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->CONNECTIVITY_STATUS:Lbbc/mobile/news/helper/NewsServiceConstants;

    new-instance v4, Lbbc/mobile/news/helper/ConnectivityStatus;

    invoke-direct {v4}, Lbbc/mobile/news/helper/ConnectivityStatus;-><init>()V

    invoke-virtual {p0, v3, v4}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method private ensureDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "directory"

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 27
    iget-object v0, p0, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "singleton"

    .prologue
    .line 31
    iget-object v0, p0, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "BaseCustomDependencyInjectionInit"

    const-string v1, "register: %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lbbc/mobile/news/helper/BBCLog;->ii(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public set(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "o"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 75
    return-void
.end method
