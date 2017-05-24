.class public final enum Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;
.super Ljava/lang/Enum;
.source "ActionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

.field public static final enum CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

.field public static final enum LONGCLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

.field public static final enum UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    const-string v1, "LONGCLICK"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->LONGCLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->LONGCLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    return-object v0
.end method
