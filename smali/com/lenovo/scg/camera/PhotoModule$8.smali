.class Lcom/lenovo/scg/camera/PhotoModule$8;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->locationFirstRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$8;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$8;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const-string/jumbo v1, "on"

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$3900(Lcom/lenovo/scg/camera/PhotoModule;Ljava/lang/String;)V

    .line 1493
    return-void
.end method
