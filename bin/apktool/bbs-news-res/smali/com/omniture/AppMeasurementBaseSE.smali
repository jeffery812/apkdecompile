.class public Lcom/omniture/AppMeasurementBaseSE;
.super Lcom/omniture/AppMeasurementBaseSE13;
.source "AppMeasurementBaseSE.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/omniture/AppMeasurementBaseSE13;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRequestHandler()Lcom/omniture/RequestHandler;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/omniture/AppMeasurementBaseSE;->requestHandler:Lcom/omniture/RequestHandler;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/omniture/RequestHandlerSe;

    invoke-direct {v0}, Lcom/omniture/RequestHandlerSe;-><init>()V

    iput-object v0, p0, Lcom/omniture/AppMeasurementBaseSE;->requestHandler:Lcom/omniture/RequestHandler;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/omniture/AppMeasurementBaseSE;->requestHandler:Lcom/omniture/RequestHandler;

    return-object v0
.end method
