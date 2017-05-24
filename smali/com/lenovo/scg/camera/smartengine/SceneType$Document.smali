.class public Lcom/lenovo/scg/camera/smartengine/SceneType$Document;
.super Lcom/lenovo/scg/camera/smartengine/SceneType$Type;
.source "SceneType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SceneType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Document"
.end annotation


# static fields
.field public static final TYPE_DOCUMENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType$Document;->this$0:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    return-void
.end method
