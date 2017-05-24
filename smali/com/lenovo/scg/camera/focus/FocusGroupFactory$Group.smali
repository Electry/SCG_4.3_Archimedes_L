.class public final enum Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
.super Ljava/lang/Enum;
.source "FocusGroupFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field public static final enum Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Pro"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 20
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 21
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Smart"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 22
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Multi_Photo"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 23
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Simple"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 24
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Touch_Photo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Video_Smart"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 26
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    const-string v1, "Video_Infinity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    return-object v0
.end method
