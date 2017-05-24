.class public final enum Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;
.super Ljava/lang/Enum;
.source "ActionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

.field public static final enum CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

.field public static final enum ERASER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

.field public static final enum FINGER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

.field public static final enum HOVER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

.field public static final enum PEN:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

.field public static final enum UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    const-string v1, "PEN"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->PEN:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    const-string v1, "ERASER"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->ERASER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    const-string v1, "FINGER"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->FINGER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    const-string v1, "HOVER"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->HOVER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    .line 172
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->PEN:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->ERASER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->FINGER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->HOVER:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

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
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    const-class v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    return-object v0
.end method
