.class public final enum Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;
.super Ljava/lang/Enum;
.source "FocusGroupFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShutterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

.field public static final enum SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

.field public static final enum SM_Quick:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

.field public static final enum SM_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    const-string v1, "SM_Auto"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    .line 50
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    const-string v1, "SM_Quick"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Quick:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    .line 51
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    const-string v1, "SM_Smart"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Quick:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->SM_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    return-object v0
.end method
