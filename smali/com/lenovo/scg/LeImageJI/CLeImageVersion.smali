.class public Lcom/lenovo/scg/LeImageJI/CLeImageVersion;
.super Ljava/lang/Object;
.source "CLeImageVersion.java"


# static fields
.field private static mInstance:Lcom/lenovo/scg/LeImageJI/CLeImageVersion;


# instance fields
.field public branch_LvAPI:I

.field public branch_iterator:I

.field public frameworkVersion:I

.field public trunk_LvAPI:I

.field public trunk_iterator:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    const-string v0, "Lejpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    const-string v0, "LeImageJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInstance()Lcom/lenovo/scg/LeImageJI/CLeImageVersion;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->mInstance:Lcom/lenovo/scg/LeImageJI/CLeImageVersion;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;-><init>()V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->mInstance:Lcom/lenovo/scg/LeImageJI/CLeImageVersion;

    .line 49
    :cond_0
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->mInstance:Lcom/lenovo/scg/LeImageJI/CLeImageVersion;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->InitC()I

    .line 51
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->mInstance:Lcom/lenovo/scg/LeImageJI/CLeImageVersion;

    return-object v0
.end method

.method private native InitC()I
.end method


# virtual methods
.method public GetVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->frameworkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->trunk_LvAPI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->branch_LvAPI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->trunk_iterator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->branch_iterator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method
