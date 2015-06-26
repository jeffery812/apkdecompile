.class public Lbbc/mobile/news/init/CustomDependencyInjectionInit;
.super Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;
.source "CustomDependencyInjectionInit.java"


# static fields
.field public static final DEFAULT:Lbbc/mobile/news/init/CustomDependencyInjectionInit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lbbc/mobile/news/init/CustomDependencyInjectionInit;

    invoke-direct {v0}, Lbbc/mobile/news/init/CustomDependencyInjectionInit;-><init>()V

    sput-object v0, Lbbc/mobile/news/init/CustomDependencyInjectionInit;->DEFAULT:Lbbc/mobile/news/init/CustomDependencyInjectionInit;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const-string v1, "bbc.mobile.news.ww"

    invoke-static {}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/init/BaseCustomDependencyInjectionInit;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/util/GlobalSettings;->getBootstrapUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, bootstrapUrl:Ljava/lang/String;
    sget-object v1, Lbbc/mobile/news/helper/NewsServiceConstants;->BOOTSTRAP_URI:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/init/CustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 19
    sget-object v1, Lbbc/mobile/news/helper/NewsServiceConstants;->HOME_ACTIVITY_INTENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    const-class v2, Lbbc/mobile/news/ww/HomeWwActivity;

    invoke-virtual {p0, v1, v2}, Lbbc/mobile/news/init/CustomDependencyInjectionInit;->register(Lbbc/mobile/news/helper/NewsServiceConstants;Ljava/lang/Object;)V

    .line 20
    const-string v1, "bootstrap-url"

    invoke-static {v1, v0}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
