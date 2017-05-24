.class public Lcom/baidu/CdnnFkd;
.super Ljava/lang/Object;
.source "CdnnFkd.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "cdnnfkd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native cdnnFkd(Ljava/lang/String;)[I
.end method

.method public native cdnnFkdModelInit(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native cdnnFkdModelRelease()V
.end method
