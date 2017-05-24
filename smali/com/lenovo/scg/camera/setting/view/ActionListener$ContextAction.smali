.class public final enum Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;
.super Ljava/lang/Enum;
.source "ActionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

.field public static final enum SPEN_ATTACHMENT:Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

.field public static final enum SPEN_DETACHMENT:Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    const-string v1, "SPEN_ATTACHMENT"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;->SPEN_ATTACHMENT:Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    const-string v1, "SPEN_DETACHMENT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;->SPEN_DETACHMENT:Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;->SPEN_ATTACHMENT:Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;->SPEN_DETACHMENT:Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    const-class v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;

    return-object v0
.end method
