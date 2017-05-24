.class public final enum Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;
.super Ljava/lang/Enum;
.source "ActionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

.field public static final enum DOWN:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

.field public static final enum MOVE:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

.field public static final enum UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

.field public static final enum UP:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->DOWN:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->MOVE:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->UP:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->DOWN:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->MOVE:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->UP:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

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
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    const-class v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    return-object v0
.end method
