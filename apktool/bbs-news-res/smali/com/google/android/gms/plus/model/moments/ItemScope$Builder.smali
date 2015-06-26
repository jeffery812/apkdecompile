.class public Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/moments/ItemScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private BL:Ljava/lang/String;

.field private Tg:Ljava/lang/String;

.field private adZ:D

.field private aea:D

.field private final alR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private alS:Lcom/google/android/gms/internal/nt;

.field private alT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alU:Lcom/google/android/gms/internal/nt;

.field private alV:Ljava/lang/String;

.field private alW:Ljava/lang/String;

.field private alX:Ljava/lang/String;

.field private alY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field private alZ:I

.field private amA:Ljava/lang/String;

.field private amB:Ljava/lang/String;

.field private amC:Ljava/lang/String;

.field private amD:Lcom/google/android/gms/internal/nt;

.field private amE:Ljava/lang/String;

.field private amF:Ljava/lang/String;

.field private amG:Ljava/lang/String;

.field private amH:Lcom/google/android/gms/internal/nt;

.field private amI:Ljava/lang/String;

.field private amJ:Ljava/lang/String;

.field private amK:Ljava/lang/String;

.field private amL:Ljava/lang/String;

.field private ama:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field private amb:Lcom/google/android/gms/internal/nt;

.field private amc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field private amd:Ljava/lang/String;

.field private ame:Ljava/lang/String;

.field private amf:Lcom/google/android/gms/internal/nt;

.field private amg:Ljava/lang/String;

.field private amh:Ljava/lang/String;

.field private ami:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field private amj:Ljava/lang/String;

.field private amk:Ljava/lang/String;

.field private aml:Ljava/lang/String;

.field private amm:Ljava/lang/String;

.field private amn:Ljava/lang/String;

.field private amo:Ljava/lang/String;

.field private amp:Ljava/lang/String;

.field private amq:Ljava/lang/String;

.field private amr:Lcom/google/android/gms/internal/nt;

.field private ams:Ljava/lang/String;

.field private amt:Ljava/lang/String;

.field private amu:Ljava/lang/String;

.field private amv:Lcom/google/android/gms/internal/nt;

.field private amw:Lcom/google/android/gms/internal/nt;

.field private amx:Lcom/google/android/gms/internal/nt;

.field private amy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field private amz:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private ol:Ljava/lang/String;

.field private uO:Ljava/lang/String;

.field private uR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 60

    new-instance v2, Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alS:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alT:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alU:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alY:Ljava/util/List;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alZ:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ama:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amb:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amc:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ame:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amf:Lcom/google/android/gms/internal/nt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amg:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amh:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ol:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ami:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amj:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amk:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->aml:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Tg:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amm:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amn:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amo:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amp:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amq:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amr:Lcom/google/android/gms/internal/nt;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ams:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amt:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->BL:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amu:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amv:Lcom/google/android/gms/internal/nt;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adZ:D

    move-wide/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amw:Lcom/google/android/gms/internal/nt;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->aea:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amx:Lcom/google/android/gms/internal/nt;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amy:Ljava/util/List;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amz:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amA:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amB:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amC:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amD:Lcom/google/android/gms/internal/nt;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amE:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amF:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amG:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amH:Lcom/google/android/gms/internal/nt;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amI:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amJ:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->uO:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->uR:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amK:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amL:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-direct/range {v2 .. v59}, Lcom/google/android/gms/internal/nt;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/nt;Ljava/util/List;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/internal/nt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;DLcom/google/android/gms/internal/nt;DLjava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setAbout(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "about"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alS:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAdditionalName(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, additionalName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alT:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddress(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "address"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alU:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressCountry(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "addressCountry"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressLocality(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "addressLocality"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alW:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressRegion(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "addressRegion"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alX:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAssociated_media(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, associated_media:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alY:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendeeCount(I)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "attendeeCount"

    .prologue
    iput p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alZ:I

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendees(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, attendees:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ama:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAudio(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "audio"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amb:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAuthor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, author:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amc:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBestRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "bestRating"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "birthDate"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ame:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setByArtist(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "byArtist"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amf:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "caption"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentSize(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "contentSize"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amh:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "contentUrl"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ol:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContributor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, contributor:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ami:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateCreated(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "dateCreated"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amj:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateModified(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "dateModified"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amk:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDatePublished(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "datePublished"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->aml:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "description"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Tg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "duration"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEmbedUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "embedUrl"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEndDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "endDate"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "familyName"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amp:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "gender"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amq:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGeo(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "geo"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amr:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "givenName"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ams:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setHeight(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "height"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amt:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "id"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->BL:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "image"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amu:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setInAlbum(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "inAlbum"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amv:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLatitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 3
    .parameter "latitude"

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adZ:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLocation(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "location"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amw:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLongitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 3
    .parameter "longitude"

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->aea:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPartOfTVSeries(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "partOfTVSeries"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amx:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPerformers(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    .prologue
    .local p1, performers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/plus/model/moments/ItemScope;>;"
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amy:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPlayerType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "playerType"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amz:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "postOfficeBoxNumber"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amA:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "postalCode"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amB:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setRatingValue(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "ratingValue"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amC:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setReviewRating(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "reviewRating"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amD:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "startDate"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amE:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStreetAddress(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "streetAddress"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amF:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "text"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnail(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "thumbnail"

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amH:Lcom/google/android/gms/internal/nt;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "thumbnailUrl"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amI:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setTickerSymbol(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "tickerSymbol"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "type"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->uO:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "url"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->uR:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWidth(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "width"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amK:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWorstRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .parameter "worstRating"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->amL:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->alR:Ljava/util/Set;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
