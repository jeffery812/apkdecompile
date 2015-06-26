.class public interface abstract Lorg/springframework/web/client/RestOperations;
.super Ljava/lang/Object;
.source "RestOperations.java"


# virtual methods
.method public abstract delete(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract delete(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/net/URI;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract exchange(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;Ljava/util/Map;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/http/HttpEntity",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract exchange(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/http/HttpEntity",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract exchange(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/http/HttpEntity",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/web/client/RequestCallback;",
            "Lorg/springframework/web/client/ResponseExtractor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/web/client/RequestCallback;",
            "Lorg/springframework/web/client/ResponseExtractor",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/web/client/RequestCallback;",
            "Lorg/springframework/web/client/ResponseExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract getForEntity(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract getForEntity(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract getForEntity(Ljava/net/URI;Ljava/lang/Class;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract getForObject(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract getForObject(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract getForObject(Ljava/net/URI;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract headForHeaders(Ljava/lang/String;Ljava/util/Map;)Lorg/springframework/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/HttpHeaders;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract headForHeaders(Ljava/lang/String;[Ljava/lang/Object;)Lorg/springframework/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract headForHeaders(Ljava/net/URI;)Lorg/springframework/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract optionsForAllow(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract optionsForAllow(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract optionsForAllow(Ljava/net/URI;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract postForEntity(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract postForEntity(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract postForEntity(Ljava/net/URI;Ljava/lang/Object;Ljava/lang/Class;)Lorg/springframework/http/ResponseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract postForLocation(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract postForLocation(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract postForLocation(Ljava/net/URI;Ljava/lang/Object;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract postForObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract postForObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract postForObject(Ljava/net/URI;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public varargs abstract put(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/net/URI;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation
.end method
