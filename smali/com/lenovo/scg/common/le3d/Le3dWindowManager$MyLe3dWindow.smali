.class Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
.super Ljava/lang/Object;
.source "Le3dWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/Le3dWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLe3dWindow"
.end annotation


# instance fields
.field public mController:Lcom/lenovo/scg/common/le3d/Le3dController;

.field public mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field public mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dWindowManager;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->this$0:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dWindowManager;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 1
    .param p2, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p3, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->this$0:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .line 206
    iput-object p3, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 208
    return-void
.end method
