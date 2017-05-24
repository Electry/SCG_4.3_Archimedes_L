.class public Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;
.super Ljava/lang/Object;
.source "CLeCSCVersion.java"


# static fields
.field private static mInstance:Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;


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
    .line 65
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    const-string v0, "LeCSCJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInstance()Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->mInstance:Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;

    invoke-direct {v0}, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;-><init>()V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->mInstance:Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;

    .line 51
    :cond_0
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->mInstance:Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;

    invoke-direct {v0}, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->InitC()I

    .line 52
    const-string/jumbo v0, "tanyl1"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->mInstance:Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;

    return-object v0
.end method

.method private native InitC()I
.end method


# virtual methods
.method public GetVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->frameworkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->trunk_LvAPI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->branch_LvAPI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->trunk_iterator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->branch_iterator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method
