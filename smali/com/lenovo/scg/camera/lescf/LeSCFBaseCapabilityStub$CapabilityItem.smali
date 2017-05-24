.class Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;
.super Ljava/lang/Object;
.source "LeSCFBaseCapabilityStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityItem"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;->this$0:Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;->mName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;->mValue:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method isCapability(Ljava/lang/String;)Z
    .locals 1
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
