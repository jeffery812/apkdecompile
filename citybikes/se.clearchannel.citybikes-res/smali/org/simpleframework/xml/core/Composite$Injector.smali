.class Lorg/simpleframework/xml/core/Composite$Injector;
.super Lorg/simpleframework/xml/core/Composite$Builder;
.source "Composite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/Composite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/core/Composite;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)V
    .locals 0
    .parameter
    .parameter "composite"
    .parameter "criteria"
    .parameter "schema"
    .parameter "value"

    .prologue
    .line 1412
    iput-object p1, p0, Lorg/simpleframework/xml/core/Composite$Injector;->this$0:Lorg/simpleframework/xml/core/Composite;

    .line 1413
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/simpleframework/xml/core/Composite$Builder;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)V

    .line 1414
    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;Lorg/simpleframework/xml/core/Composite$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 1399
    invoke-direct/range {p0 .. p5}, Lorg/simpleframework/xml/core/Composite$Injector;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)V

    return-void
.end method

.method private readInject(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1457
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Injector;->schema:Lorg/simpleframework/xml/core/Schema;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Schema;->getInstantiator()Lorg/simpleframework/xml/core/Instantiator;

    move-result-object v0

    .line 1458
    .local v0, creator:Lorg/simpleframework/xml/core/Instantiator;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Injector;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, v2}, Lorg/simpleframework/xml/core/Instantiator;->getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;

    move-result-object v1

    .line 1460
    .local v1, source:Ljava/lang/Object;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Injector;->value:Lorg/simpleframework/xml/core/Instance;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Injector;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    .line 1463
    return-object v1
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1428
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite$Injector;->schema:Lorg/simpleframework/xml/core/Schema;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .line 1430
    .local v0, section:Lorg/simpleframework/xml/core/Section;
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite$Injector;->composite:Lorg/simpleframework/xml/core/Composite;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Injector;->schema:Lorg/simpleframework/xml/core/Schema;

    #calls: Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    invoke-static {v1, p1, v3, v2}, Lorg/simpleframework/xml/core/Composite;->access$100(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 1431
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite$Injector;->composite:Lorg/simpleframework/xml/core/Composite;

    #calls: Lorg/simpleframework/xml/core/Composite;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    invoke-static {v1, p1, v3, v0}, Lorg/simpleframework/xml/core/Composite;->access$200(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1432
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite$Injector;->composite:Lorg/simpleframework/xml/core/Composite;

    #calls: Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    invoke-static {v1, p1, v3, v0}, Lorg/simpleframework/xml/core/Composite;->access$300(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1433
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite$Injector;->composite:Lorg/simpleframework/xml/core/Composite;

    #calls: Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    invoke-static {v1, p1, v3, v0}, Lorg/simpleframework/xml/core/Composite;->access$400(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1435
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Composite$Injector;->readInject(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
