.class Lcom/lenovo/scg/camera/ui/ZoomBarCanver$2;
.super Ljava/lang/Object;
.source "ZoomBarCanver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEffectSelEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$2;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$2;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    .line 226
    return-void
.end method
