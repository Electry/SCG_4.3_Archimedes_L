.class public Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;
.super Lcom/lenovo/scg/camera/smartengine/SceneType$Type;
.source "SceneType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SceneType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Motion"
.end annotation


# static fields
.field public static final TYPE_JITTER:I = 0x2

.field public static final TYPE_MOVE:I = 0x1


# instance fields
.field jitterRatio:D

.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    return-void
.end method


# virtual methods
.method public getJitterRatio()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->jitterRatio:D

    return-wide v0
.end method
