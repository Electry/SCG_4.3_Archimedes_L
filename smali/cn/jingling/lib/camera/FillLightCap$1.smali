.class Lcn/jingling/lib/camera/FillLightCap$1;
.super Ljava/lang/Object;
.source "FillLightCap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/FillLightCap;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/FillLightCap;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/FillLightCap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/FillLightCap$1;->this$0:Lcn/jingling/lib/camera/FillLightCap;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap$1;->this$0:Lcn/jingling/lib/camera/FillLightCap;

    # invokes: Lcn/jingling/lib/camera/FillLightCap;->startLightingTransition()V
    invoke-static {v0}, Lcn/jingling/lib/camera/FillLightCap;->access$0(Lcn/jingling/lib/camera/FillLightCap;)V

    .line 51
    return-void
.end method
