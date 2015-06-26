.class public Lbbc/mobile/news/init/DI;
.super Ljava/lang/Object;
.source "DI.java"


# static fields
.field public static final DEFAULT:Lbbc/mobile/news/init/DI;


# instance fields
.field private final dependencyInjection:Lbbc/mobile/news/helper/DependencyInjection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, di:Lbbc/mobile/news/helper/DependencyInjection;
    :try_start_0
    const-string v3, "bbc.mobile.news.init.CustomDependencyInjectionInit"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 32
    .local v2, handler:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #di:Lbbc/mobile/news/helper/DependencyInjection;
    check-cast v0, Lbbc/mobile/news/helper/DependencyInjection;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 43
    .restart local v0       #di:Lbbc/mobile/news/helper/DependencyInjection;
    new-instance v3, Lbbc/mobile/news/init/DI;

    invoke-direct {v3, v0}, Lbbc/mobile/news/init/DI;-><init>(Lbbc/mobile/news/helper/DependencyInjection;)V

    sput-object v3, Lbbc/mobile/news/init/DI;->DEFAULT:Lbbc/mobile/news/init/DI;

    .line 44
    return-void

    .line 34
    .end local v0           #di:Lbbc/mobile/news/helper/DependencyInjection;
    .end local v2           #handler:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot load class with custom class loader: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 38
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DependencyInjection illegal acesss: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 41
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DependencyInjection InstantiationException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private constructor <init>(Lbbc/mobile/news/helper/DependencyInjection;)V
    .locals 0
    .parameter "dependencyInjection"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lbbc/mobile/news/init/DI;->dependencyInjection:Lbbc/mobile/news/helper/DependencyInjection;

    .line 26
    return-void
.end method

.method public static final get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 49
    sget-object v1, Lbbc/mobile/news/init/DI;->DEFAULT:Lbbc/mobile/news/init/DI;

    iget-object v1, v1, Lbbc/mobile/news/init/DI;->dependencyInjection:Lbbc/mobile/news/helper/DependencyInjection;

    invoke-interface {v1, p0}, Lbbc/mobile/news/helper/DependencyInjection;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, r:Ljava/lang/Object;
    return-object v0
.end method

.method public static final getApplicationPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lbbc/mobile/news/helper/NewsServiceConstants;->APPLICATION_PACKAGE:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v0}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getAsApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lbbc/mobile/news/helper/NewsServiceConstants;->APPLICATION_CONTEXT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v0}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static final getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .parameter "activityName"

    .prologue
    .line 75
    invoke-static {}, Lbbc/mobile/news/init/DI;->getApplicationPackage()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, appPackage:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final set(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "o"

    .prologue
    .line 59
    sget-object v0, Lbbc/mobile/news/init/DI;->DEFAULT:Lbbc/mobile/news/init/DI;

    iget-object v0, v0, Lbbc/mobile/news/init/DI;->dependencyInjection:Lbbc/mobile/news/helper/DependencyInjection;

    invoke-interface {v0, p0, p1}, Lbbc/mobile/news/helper/DependencyInjection;->set(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
