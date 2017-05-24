.class public Lcom/lenovo/scg/camera/cameramode/CameraMode;
.super Ljava/lang/Object;
.source "CameraMode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field private mResourceId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/CameraMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/CameraMode;->mResourceId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/CameraMode;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 0
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/CameraMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 46
    return-void
.end method

.method public setResourceId(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/lenovo/scg/camera/cameramode/CameraMode;->mResourceId:I

    .line 42
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/CameraMode;->mTitle:Ljava/lang/String;

    .line 34
    return-void
.end method
