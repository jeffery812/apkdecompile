.class final Lio/boxcar/push/rest/e$6;
.super Ljava/lang/Object;
.source "VolleyServerProxy.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/e;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCRegistration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/model/BXCRegistration;

.field final synthetic b:Lio/boxcar/push/rest/e;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/e;Lio/boxcar/push/model/BXCRegistration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lio/boxcar/push/rest/e$6;->b:Lio/boxcar/push/rest/e;

    iput-object p2, p0, Lio/boxcar/push/rest/e$6;->a:Lio/boxcar/push/model/BXCRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 2
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    iget-object v0, p0, Lio/boxcar/push/rest/e$6;->b:Lio/boxcar/push/rest/e;

    invoke-static {v0}, Lio/boxcar/push/rest/e;->d(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;

    move-result-object v0

    iget-object v1, p0, Lio/boxcar/push/rest/e$6;->a:Lio/boxcar/push/model/BXCRegistration;

    invoke-interface {v0, v1}, Lio/boxcar/push/rest/c$a;->a(Lio/boxcar/push/model/BXCRegistration;)V

    return-void
.end method
