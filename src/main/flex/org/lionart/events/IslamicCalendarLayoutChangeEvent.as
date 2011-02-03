package org.lionart.events
{
    import flash.events.Event;

    import org.lionart.time.ICalendar;

    /**
     *  The CalendarLayoutChangeEvent class represents the event object passed to
     *  the event listener for the <code>change</code> event for
     *  the DateChooser and DateField controls.
     *
     *  @see mx.controls.DateChooser
     *  @see mx.controls.DateField
     *
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public class IslamicCalendarLayoutChangeEvent extends Event
    {
        include "../core/Version.as";

        //--------------------------------------------------------------------------
        //
        //  Class constants
        //
        //--------------------------------------------------------------------------

        /**
         *  The <code>CalendarLayoutChangeEvent.CHANGE</code> constant
         *  defines the value of the <code>type</code> property of the event
         *  object for a <code>change</code> event.
         *
         *  <p>The properties of the event object have the following values:</p>
         *  <table class="innertable">
         *     <tr><th>Property</th><th>Value</th></tr>
         *     <tr><td><code>bubbles</code></td><td>false</td></tr>
         *     <tr><td><code>cancelable</code></td><td>false</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The Object that defines the
         *       event listener that handles the event. For example, if you use
         *       <code>myButton.addEventListener()</code> to register an event listener,
         *       myButton is the value of the <code>currentTarget</code>. </td></tr>
         *     <tr><td><code>newDate</code></td><td>The date selected in the control.</td></tr>
         *     <tr><td><code>target</code></td><td>The Object that dispatched the event;
         *       it is not always the Object listening for the event.
         *       Use the <code>currentTarget</code> property to always access the
         *       Object listening for the event.</td></tr>
         *     <tr><td><code>triggerEvent</code></td><td>The event that triggered this change event;
         *       usually a <code>change</code> event.</td></tr>
         *  </table>
         *
         *  @eventType change
         *
         *  @langversion 3.0
         *  @playerversion Flash 9
         *  @playerversion AIR 1.1
         *  @productversion Flex 3
         */
        public static const CHANGE:String = "change";

        //--------------------------------------------------------------------------
        //
        //  Constructor
        //
        //--------------------------------------------------------------------------

        /**
         *  Constructor.
         *
         *  @param type The event type; indicates the action that triggered the event.
         *
         *  @param bubbles Specifies whether the event can bubble
         *  up the display list hierarchy.
         *
         *  @param cancelable Specifies whether the behavior
         *  associated with the event can be prevented.
         *
         *  @param newDate The date selected in the control.
         *
         *  @param triggerEvent The event that triggered this change event;
         *       usually a <code>change</code> event.
         *
         *  @langversion 3.0
         *  @playerversion Flash 9
         *  @playerversion AIR 1.1
         *  @productversion Flex 3
         */
        public function IslamicCalendarLayoutChangeEvent(type:String,
            bubbles:Boolean = false,
            cancelable:Boolean = false,
            newDate:ICalendar = null,
            triggerEvent:Event = null)
        {
            super(type, bubbles, cancelable);

            this.newDate = newDate;
            this.triggerEvent = triggerEvent;
        }

        //--------------------------------------------------------------------------
        //
        //  Properties
        //
        //--------------------------------------------------------------------------

        //----------------------------------
        //  newDate
        //----------------------------------

        /**
         *  The selected date of the control.
         *
         *  @langversion 3.0
         *  @playerversion Flash 9
         *  @playerversion AIR 1.1
         *  @productversion Flex 3
         */
        public var newDate:ICalendar;

        //----------------------------------
        //  triggerEvent
        //----------------------------------

        /**
         *  The event that triggered the change of the date;
         *  usually a <code>change</code> event.
         *
         *  @langversion 3.0
         *  @playerversion Flash 9
         *  @playerversion AIR 1.1
         *  @productversion Flex 3
         */
        public var triggerEvent:Event;

        //--------------------------------------------------------------------------
        //
        //  Overridden methods: Event
        //
        //--------------------------------------------------------------------------

        /**
         *  @private
         */
        override public function clone() : Event
        {
            return new IslamicCalendarLayoutChangeEvent(type, bubbles, cancelable,
                newDate, triggerEvent);
        }
    }
}