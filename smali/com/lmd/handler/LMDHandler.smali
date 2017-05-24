.class public Lcom/lmd/handler/LMDHandler;
.super Ljava/lang/Object;
.source "LMDHandler.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "VISFaceProcHandler"

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
.method public native LMDDestoryHandler()V
.end method

.method public native LMDInitHandler(Ljava/lang/String;)Z
.end method

.method public native LMDWorker([BIIF)[I
.end method
