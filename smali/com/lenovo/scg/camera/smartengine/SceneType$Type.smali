.class public Lcom/lenovo/scg/camera/smartengine/SceneType$Type;
.super Ljava/lang/Object;
.source "SceneType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SceneType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# static fields
.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_NO_DETECT:I = -0x1


# instance fields
.field flag:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->flag:I

    return v0
.end method

.method public isDetectedType()Z
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->flag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->flag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormal()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->flag:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->flag:I

    .line 96
    return-void
.end method
