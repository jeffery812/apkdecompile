.class public Lcom/google/android/gms/drive/query/Filters;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter "filter"
    .parameter "additionalFilters"

    .prologue
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->si:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V

    return-object v0
.end method

.method public static and(Ljava/util/List;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, filters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/drive/query/Filter;>;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->si:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V

    return-object v0
.end method

.method public static contains(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/String;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, field:Lcom/google/android/gms/drive/metadata/MetadataField;,"Lcom/google/android/gms/drive/metadata/MetadataField<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->sl:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static eq(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, field:Lcom/google/android/gms/drive/metadata/MetadataField;,"Lcom/google/android/gms/drive/metadata/MetadataField<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->sd:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greaterThan(Lcom/google/android/gms/drive/metadata/OrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, field:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;,"Lcom/google/android/gms/drive/metadata/OrderedMetadataField<TT;>;"
    .local p1, value:Ljava/lang/Comparable;,"TT;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->sg:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greaterThanEquals(Lcom/google/android/gms/drive/metadata/OrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, field:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;,"Lcom/google/android/gms/drive/metadata/OrderedMetadataField<TT;>;"
    .local p1, value:Ljava/lang/Comparable;,"TT;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->sh:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static in(Lcom/google/android/gms/drive/metadata/CollectionMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/CollectionMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, field:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;,"Lcom/google/android/gms/drive/metadata/CollectionMetadataField<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/query/internal/InFilter;-><init>(Lcom/google/android/gms/drive/metadata/CollectionMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lessThan(Lcom/google/android/gms/drive/metadata/OrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, field:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;,"Lcom/google/android/gms/drive/metadata/OrderedMetadataField<TT;>;"
    .local p1, value:Ljava/lang/Comparable;,"TT;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->se:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lessThanEquals(Lcom/google/android/gms/drive/metadata/OrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, field:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;,"Lcom/google/android/gms/drive/metadata/OrderedMetadataField<TT;>;"
    .local p1, value:Ljava/lang/Comparable;,"TT;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->sf:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static not(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .locals 1
    .parameter "toNegate"

    .prologue
    new-instance v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/query/internal/NotFilter;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    return-object v0
.end method

.method public static varargs or(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter "filter"
    .parameter "additionalFilters"

    .prologue
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->sj:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    .prologue
    .local p0, filters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/drive/query/Filter;>;"
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->sj:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V

    return-object v0
.end method

.method public static sharedWithMe()Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->rM:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;-><init>(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    return-object v0
.end method
