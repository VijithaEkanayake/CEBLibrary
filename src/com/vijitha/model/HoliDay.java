/**
 * 
 */
package com.vijitha.model;

import java.util.HashSet;
import java.util.Set;

import net.objectlab.kit.datecalc.common.DefaultHolidayCalendar;
import net.objectlab.kit.datecalc.common.HolidayCalendar;

import org.joda.time.LocalDate;

/**
 * @author root
 *
 */
public class HoliDay{
	
	/**
	 * 
	 */
	private Set<LocalDate> holidays() {
		// TODO Auto-generated method stub
		final Set<LocalDate> holidays = new HashSet<LocalDate>();
		holidays.add(new LocalDate("2015-01-14"));
		holidays.add(new LocalDate("2015-01-15"));
		holidays.add(new LocalDate("2015-02-04"));
		holidays.add(new LocalDate("2015-02-14"));
		holidays.add(new LocalDate("2015-02-27"));
		holidays.add(new LocalDate("2015-04-14"));
		holidays.add(new LocalDate("2015-04-18"));
		holidays.add(new LocalDate("2015-05-01"));
		holidays.add(new LocalDate("2015-05-14"));
		holidays.add(new LocalDate("2015-05-15"));
		holidays.add(new LocalDate("2015-06-12"));
		holidays.add(new LocalDate("2015-07-29"));
		holidays.add(new LocalDate("2015-09-08"));
		holidays.add(new LocalDate("2015-10-08"));
		holidays.add(new LocalDate("2015-10-22"));
		holidays.add(new LocalDate("2015-11-06"));
		holidays.add(new LocalDate("2015-12-25"));
		
		return holidays;
	}
	
	// create the HolidayCalendar ASSUMING that the set covers 2006!
	public HolidayCalendar<LocalDate> getHolidayCalendar(){
	
	final HolidayCalendar<LocalDate> calendar = new DefaultHolidayCalendar<LocalDate>(holidays(), new LocalDate("2014-01-01"), new LocalDate("2015-12-31"));
	return calendar;
	}
	


}
