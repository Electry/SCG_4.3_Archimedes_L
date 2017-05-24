.class public Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;
.super Lcom/lenovo/scg/camera/smartengine/SceneType$Type;
.source "SceneType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SceneType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Environment"
.end annotation


# static fields
.field public static final TYPE_INDOOR:I = 0x1

.field public static final TYPE_OUTDOOR:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;->this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    return-void
.end method
